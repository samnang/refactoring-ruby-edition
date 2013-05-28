require_relative '../books'

describe Books do
  it "finds books" do
    connection = double("Connection")
    Books.connection = connection
    sql = "SELECT * FROM books LEFT OUTER JOIN authors ON books.author_id = authors.id WHERE authors.name = 'Jenny James'"

    connection.should_receive(:find).with(sql)

    Books.find(:all,
               :conditions => "authors.name = 'Jenny James'",
               :joins => [:authors])

  end
end
