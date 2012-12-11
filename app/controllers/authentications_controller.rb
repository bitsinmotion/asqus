class AuthenticationsController < ApplicationController

def index
  # load all of current user's authentications
  @authentications = current_user.authentications if current_user
end


def create

  auth = request.env["omniauth.auth"]
 
  # Try to find authentication first

  logger.debug "Trying to find authentication by provider and auth"
  authentication = Authentication.find_by_provider_and_uid(auth['provider'], auth['uid'])
 
  if authentication
    logger.debug "Auth found, signing in user"
    # Authentication found, sign the existing user in.
    flash[:notice] = "Signed in successfully."
    sign_in_and_redirect(:user, authentication.user)
  elsif current_user
    logger.debug "Auth not found. Creating new one for current user"
    # add new authentication to current user
    current_user.authentications.create!(:provider => omniauth['provider'], :uid => omniauth['uid'])
    flash[:notice] = t(:authentication_successful)
    redirect_to authentications_url
  else
    logger.debug "Auth not found. Creating a new one and a new user too"
    # Authentication not found. Create new user.
    user = User.new
    user.apply_omniauth(auth)
    if user.save(:validate => false)
      logger.debug "User created successfully. Signing in and redirecting."
      flash[:notice] = "Account created and signed in successfully."
      sign_in_and_redirect(:user, user)
    else
      logger.debug "Failure creating user. Redirecting to new user registration"
      session[:omniauth] = auth.except('extra')
      redirect_to new_user_registration_url
    end
  end
end


# destroy user's authentication and return to the authentication page.
def destroy
  @authentication = current_user.authentications.find(params[:id])
  @authentication.destroy
  flash[:notice] = t(:successfully_destroyed_authentication)
    redirect_to authentications_url
end

def failure 

  # flash[:notice] = params[:message]
  redirect_to '/'

end

# try again when authentication failed. This apparently does not work in development mode, so it's being overridden
# with the oauth_failure method below (see the omniauth initialization code)

def auth_failure
  redirect_to '/', :alert => params[:message]
end

def oauth_failure
  logger.debug "OAuth permission failure"
  redirect_to '/', :alert => 'Permission failure. Could not authorize user.'
end

end
