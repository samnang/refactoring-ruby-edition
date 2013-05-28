require_relative '../search_criteria'

describe "SearchCriteria" do
  it "intializes fields via hash" do
    criteria = SearchCriteria.new(author_id: 1, publisher_id: 1, isbn: "123")

    expect(criteria.author_id).to eql(1)
    expect(criteria.publisher_id).to eql(1)
    expect(criteria.isbn).to eql("123")
  end
end
