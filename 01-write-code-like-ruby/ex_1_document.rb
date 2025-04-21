class Document
  attr_accessor :title, :author, :content

  def initialize( title, author, content )
    @title = title
    @author = author
    @content = content
  end

  def words
    @content.split
  end

  def word_count
    words.size
  end

  def self.count_words_in( the_string )
    the_words = the_string.split
    the_words.size
  end
end
