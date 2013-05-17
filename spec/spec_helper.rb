require 'rspec'

# it redirects $stdout to StringIO, so it helps to test some examples in the book
def redirect_stdout
  output = StringIO.new
  $stdout = output

  begin
    yield
  ensure
    $stdout = STDOUT
  end

  output.rewind
  output.read
end
