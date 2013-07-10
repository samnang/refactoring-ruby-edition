class Performace
  def initialize
    @data = []
  end

  def []=(index, value)
    @data.insert(index, value)
  end

  def [](index)
    @data[index]
  end
end

row = Performace.new

row[0] = "Liverpool"
row[1] = "15"

name = row[0]
wins = row[1].to_i
