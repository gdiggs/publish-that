RAILS_GEM_VERSION = '2.3.8' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'
  
  config.middleware.use "OmniAuth::Builder" do
    provider :twitter, '4eNDVHFeabKScaNlwEuOFg', '4SZZiSoQrhJOXPNgF6CHqakLKR9HZ0wq7p1Ph1kg14'
    provider :facebook, 'APP_ID', 'APP_SECRET'
    provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  end
end