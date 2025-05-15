require_relative '../01-write-code-like-ruby/ex_1_document.rb' 

class Document
  def +(other)
    Document.new( title, author, "#{content} #{other.content}" )
  end
end

describe Document do
  it "should be able to add" do
    doc1 = Document.new('Tag Line1', 'Kirk', "These are the voyages")
    doc2 = Document.new('Tag Line2', 'Kirk', "of the star ship ...")

    total_document = doc1 + doc2
    puts total_document.content

    expect(total_document.content).to eq("These are the voyages of the star ship ...")
  end
end