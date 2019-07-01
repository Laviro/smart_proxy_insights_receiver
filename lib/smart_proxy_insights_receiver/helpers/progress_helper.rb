class TasksProgress
  def self.instance
    @instance ||= TasksProgress.new
  end

  def output_buffer
    @output ||= []
  end

  def output
    output_buffer.join
  end

  def add_output(new_buffer)
    output_buffer << new_buffer
  end
end
