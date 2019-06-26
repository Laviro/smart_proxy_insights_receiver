# frozen_string_literal: true

module Proxy::InsightsReceiver
  class NotFound < RuntimeError; end

  class Plugin < ::Proxy::Plugin
    plugin 'insights_receiver', Proxy::InsightsReceiver::VERSION

    default_settings hello_greeting: 'O hai!'

    http_rackup_path File.expand_path('insights_receiver_http_config.ru', File.expand_path(__dir__))
    https_rackup_path File.expand_path('insights_receiver_http_config.ru', File.expand_path(__dir__))
  end
end
