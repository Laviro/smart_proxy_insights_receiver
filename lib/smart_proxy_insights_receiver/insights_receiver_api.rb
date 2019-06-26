# frozen_string_literal: true

require 'sinatra'
require 'smart_proxy_insights_receiver/insights_receiver'
require 'smart_proxy_insights_receiver/insights_receiver_main'

module Proxy::InsightsReceiver
  class Api < ::Sinatra::Base
    include ::Proxy::Log
    helpers ::Proxy::Helpers

    get '/hello' do
      Proxy::InsightsReceiver.say_hello
    end
  end
end
