require_relative '../movie'
require_relative '../rental'
require_relative '../customer'

describe "Movie Rental" do
  it 'prints out customer statement' do
    movie_1 = Movie.new("Iron Man 3", Movie::NEW_RELEASE)
    movie_2 = Movie.new("Avatar", Movie::REGULAR)
    movie_3 = Movie.new("Megamind", Movie::CHILDRENS)

    customer = Customer.new("Samnang")

    customer.add_rental(Rental.new(movie_1,  2))
    customer.statement.should == <<-END.strip
Rental Record for Samnang
	Iron Man 3	6
Amount owed is 6
You earned 2 frequent renter points
    END

    customer.add_rental(Rental.new(movie_2, 3))
    customer.statement.should == <<-END.strip
Rental Record for Samnang
	Iron Man 3	6
	Avatar	3.5
Amount owed is 9.5
You earned 3 frequent renter points
    END

    customer.add_rental(Rental.new(movie_3, 4))
    customer.statement.should == <<-END.strip
Rental Record for Samnang
	Iron Man 3	6
	Avatar	3.5
	Megamind	3.0
Amount owed is 12.5
You earned 4 frequent renter points
    END
  end
end

