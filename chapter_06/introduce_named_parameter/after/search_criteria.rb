class SearchCriteria
  def initialize(params)
    @author_id = params[:author_id]
    @publisher_id = params[:publisher_id]
    @isbn = params[:isbn]
  end

  attr_reader :author_id, :publisher_id, :isbn
end

