# frozen_string_literal: true

require 'smart_proxy_insights_receiver/insights_receiver_api'

# rename ?
map '/insights' do
  run Proxy::InsightsReceiver::Api
end
