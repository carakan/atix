RAILS_GEM_VERSION = '2.2.2' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'

  config.action_controller.session = {
    :session_key => '_atix_session',
    :secret      => '69df0393a111d39a7f5d007a0400f244680076ffbdc572b7e519f2472608e4a40ea2fa51fe651dda7f4ed14bf8111f25879ea3096c957b828ff0095349db2901'
  }

end
