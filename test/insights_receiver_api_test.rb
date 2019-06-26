# frozen_string_literal: true

require 'test_helper'
require 'webmock/test_unit'
require 'mocha/test_unit'
require 'rack/test'

require 'smart_proxy_insights_receiver/insights_receiver'
require 'smart_proxy_insights_receiver/insights_receiver_api'

class InsightsReceiverApiTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Proxy::InsightsReceiver::Api.new
  end

  def test_returns_hello_greeting
    # add test here
  end
end
