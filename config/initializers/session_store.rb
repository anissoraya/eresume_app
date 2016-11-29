# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, key: '_eresume_app_session',:domain => :all

#EresumeApp::Application.config.session_store :cookie_store, key: '_eresume_app_session', domain: {
#  production: '.example.com',
#  development: '.example.dev'
#}.fetch(Rails.env.to_sym, :all)
