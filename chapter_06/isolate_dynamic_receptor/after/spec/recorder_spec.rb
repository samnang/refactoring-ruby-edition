require 'spec_helper'
require_relative '../recorder'
require_relative '../command_center'

describe Recorder do
  it "replays for recoreded messages" do
    recorder = Recorder.new
    recorder.start("LRMMMMRL")
    recorder.stop("LRMMMMRL")

    output = redirect_stdout do
      recorder.play_for(CommandCenter.new)
    end

    output.should == <<-EOS
START: LRMMMMRL
STOP: LRMMMMRL
EOS
  end
end
