class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :before_all

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

protected

  def before_all
    if user_signed_in?
      @current_user_groups = UserGroup.where( :user_id => current_user.id )
    end
  end


end
