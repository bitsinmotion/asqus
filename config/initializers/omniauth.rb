Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '243189119142638', '14e3949c46a2124e0912936f89a1b5fb', {:scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access'}
 
  # To do: add twitter and ?

end