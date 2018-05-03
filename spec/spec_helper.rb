require "rspec"
require "pry"
require "webmock/rspec"

require "stub_helper"
require "stubbable_endpoint/auth"
require "stubbable_endpoint/apps"
require "stubbable_endpoint/app"
require "stubbable_endpoint/binding"
require "stubbable_endpoint/apps_page_2"
require "stubbable_endpoint/routes"
require "stubbable_endpoint/routes0"
require "stubbable_endpoint/routes00"
require "local_manager"

require 'rack/test'

ENV["API_ENDPOINT"] = 'http://api.example.com'
ENV["UAA_ENDPOINT"] = 'http://uaa.example.com'
ENV["UAA_USERNAME"] = 'uaa-username'
ENV["UAA_PASSWORD"] = 'uaa-password'
ENV["PAAS_DOMAIN"] = 'example.com'
ENV["TARGETS_PATH"] = Dir.mktmpdir
ENV["ENVIRONMENT"] = 'local'

require "cf_app_discovery"

RSpec.configure do |config|
  config.disable_monkey_patching!
  config.formatter = :doc
  config.color = true
end

FileUtils.mkdir_p("#{ENV.fetch('TARGETS_PATH')}/active")
FileUtils.mkdir_p("#{ENV.fetch('TARGETS_PATH')}/inactive")
