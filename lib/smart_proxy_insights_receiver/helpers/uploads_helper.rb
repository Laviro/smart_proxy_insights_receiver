require 'sucker_punch'
require 'open3'
require 'smart_proxy_insights_receiver/helpers/progress_helper.rb'
require 'pry'

class UploadJob
  include SuckerPunch::Job

  def perform(file)
    api_url = Proxy::InsightsReceiver::Plugin.settings.api_url
    # A script which will upload the file to the cloud or to another proxy.
    # cmd = './uploader.sh'
    cmd = "curl -F 'file=@#{file[:tempfile]}' #{api_url}"
    Open3.popen2e(cmd) do |stdin, stdout_stderr, wait_thread|
      stdout_stderr.each do |out_line|
        TasksProgress.instance.add_output("PROC: #{out_line}")
      end
      TasksProgress.instance.add_output("After output from loop")
    end
    TasksProgress.instance.add_output("After output after loop")
  end
end
