# frozen_string_literal: true

module Proxy::InsightsReceiver
  extend ::Proxy::Util
  extend ::Proxy::Log

  class << self
    def say_hello
      Proxy::InsightsReceiver::Plugin.settings.hello_greeting
    end
  end
end
