class Performace
  attr_accessor :name
  attr_writer :wins

  def wins
    @wins.to_i
  end
end

row = Performace.new

row.name = "Liverpool"
row.wins = "15"

name = row.name
wins = row.wins
