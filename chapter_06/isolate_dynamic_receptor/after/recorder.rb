require_relative 'message_collector'

class Recorder
  def record
    @message_collector ||= MessageCollector.new
  end

  def play_for(obj)
    record.messages.inject(obj) do |result, message|
      result.send message.first, *message.last
    end
  end

  def to_s
    record.messages.inject([]) do |result, message|
      result << "#{message.first}(args: #{message.last.inspect})"
    end.join(".")
  end
end
