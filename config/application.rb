require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EresumeApp
  class Application < Rails::Application
    config.middleware.use PDFKit::Middleware, :print_media_type => true
  end
end
