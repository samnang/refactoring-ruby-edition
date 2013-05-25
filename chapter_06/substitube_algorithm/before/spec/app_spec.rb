require_relative '../app'

describe "App" do
  it "founds friends" do
    people = %w(Robert Don John Kent David)
    app = App.new

    expect(app.found_friends(people)).to eql(%w(Don John Kent))
  end
end
