class CommandCenter
  def start(command_string)
    puts "START: #{command_string}"
    self
  end

  def stop(command_string)
    puts "STOP: #{command_string}"
    self
  end
end
