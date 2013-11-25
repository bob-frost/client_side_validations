require 'rubygems'
require 'bundler/setup'
require 'test/unit'
if RUBY_VERSION >= '2.0'
  require 'byebug'
end
require 'mocha/setup'
require 'rails'
require 'client_side_validations/config'

module TestApp
  class Application < Rails::Application
    config.root = File.dirname(__FILE__)
    config.active_support.deprecation = :log
    config.eager_load = false
    config.secret_key_base = "secretkey123"
    config.logger = Logger.new(STDOUT)
  end
end

module ClientSideValidations; end
