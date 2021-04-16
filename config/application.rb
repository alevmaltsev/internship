require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DreamInternship
  class Application < Rails::Application
    config.load_defaults 6.1

    config.assets.paths << "#{Rails.root}/app/assets/fonts"
    config.autoload_paths << Rails.root.join('lib')
    config.eager_load_paths << Rails.root.join('lib')

    config.action_controller.permit_all_parameters = true

    config.time_zone = 'Moscow'
    config.i18n.default_locale = :ru

    config.exceptions_app = routes

    config.generators do |g|
      g.template_engine :haml
      g.test_framework :test_unit, fixture: false
      g.fixture_replacement :factory_bot
    end
  end
end
