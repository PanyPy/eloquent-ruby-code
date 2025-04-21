class Document
  attr_accessor :read_only
  attr_reader :title, :author, :content 

  # Much of the class omitted... 

  def self.while_not( document )
    while !document.is_printed?
      document.print_next_page
    end
  end

  def self.until_loop( document )
    until document.is_printed?
      document.print_next_page
    end
  end

  # Similar author= and content= methods omitted... 

end
