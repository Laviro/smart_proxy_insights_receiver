# frozen_string_literal: true

require 'sinatra'
require 'smart_proxy_insights_receiver/insights_receiver'
require 'smart_proxy_insights_receiver/helpers/uploads_helper'
require 'smart_proxy_insights_receiver/helpers/progress_helper'

module Proxy::InsightsReceiver
  class Api < ::Sinatra::Base
    include ::Proxy::Log
    helpers ::Proxy::Helpers

    uploads_folder =
      ENV['UPLOADS'] || Proxy::InsightsReceiver::Plugin.settings.uploads_folder

    get '/files' do
      Dir.entries(uploads_folder)
    end
    post '/files' do
      FileUtils.cp_r params[:file][:tempfile], "#{uploads_folder}/#{params[:file][:filename]}"
      puts "Written file: #{uploads_folder}/#{params[:file][:filename]}"

      UploadJob.perform_async(params[:file])

      puts "Before loop"
      (1..1000).each do |i|
        output = TasksProgress.instance.output
        puts output
        puts "------------------------"
        return "Done" if /after loop/.match(output)
        sleep 1
      end
    end
  end
end
