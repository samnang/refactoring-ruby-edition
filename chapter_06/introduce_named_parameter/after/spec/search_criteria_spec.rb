require_relative '../search_criteria'

describe "SearchCriteria" do
  it "intializes fields via hash" do
    criteria = SearchCriteria.new(1, 1, "123")

    expect(criteria.author_id).to eql(1)
    expect(criteria.publisher_id).to eql(1)
    expect(criteria.isbn).to eql("123")
  end
end
