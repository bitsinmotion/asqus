Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '243189119142638', '14e3949c46a2124e0912936f89a1b5fb', {:scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access, user_location'}
 
  # To do: add twitter and ?


  # We shouldn't have to do this, but for some reason oauth failures aren't being handled correctly
  # in debug mode (they are supposed to call the "failure" action of the same controller.
 
  OmniAuth.config.on_failure = AuthenticationsController.action(:oauth_failure)
end