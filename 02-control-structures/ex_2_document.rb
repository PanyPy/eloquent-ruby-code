class Document
  attr_accessor :read_only
  attr_reader :title, :author, :content 

  # Much of the class omitted... 

  def title=( new_title )
    # if not @read_only
    unless @read_only
      @title = new_title 
    end
  end

  # Similar author= and content= methods omitted... 

end
