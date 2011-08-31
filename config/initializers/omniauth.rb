Rails.application.config.middleware.use OmniAuth::Builder do
  require 'openid/store/filesystem'
  # load certificates
  require "openid/fetchers"
  OpenID.fetcher.ca_file = "#{Rails.root}/config/ca.crt"
  # OpenID.fetcher.ca_file = "/usr/lib/ssl/certs/ca-certificates.crt" #Heroku
  
  # Cheezburger.com authentication with google
  provider :google_apps, OpenID::Store::Filesystem.new('/tmp'), :domain => 'cheezburger.com', :name => 'cheez'
  # Standard google authentication
  provider :openid, OpenID::Store::Filesystem.new('./tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
end