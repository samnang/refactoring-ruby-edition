class SearchCriteria
  def initialize(author_id, publisher_id, isbn)
    @author_id = author_id
    @publisher_id = publisher_id
    @isbn = isbn
  end

  attr_reader :author_id, :publisher_id, :isbn
end

