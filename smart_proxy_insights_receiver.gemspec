# frozen_string_literal: true

require File.expand_path('lib/smart_proxy_insights_receiver/version', __dir__)

Gem::Specification.new do |s|
  s.name = 'smart_proxy_insights_receiver'
  s.version = Proxy::InsightsReceiver::VERSION

  s.summary = 'InsightsReceiver smart proxy plugin'
  s.description = 'InsightsReceiver smart proxy plugin'
  s.authors = ['John Doe']
  s.email = 'john.doe@example.com'
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.files = Dir['{lib,settings.d,bundler.d}/**/*'] + s.extra_rdoc_files
  s.homepage = 'http://github.com/laviro/smart_proxy_insights_receiver'
  s.license = 'GPLv3'
end
