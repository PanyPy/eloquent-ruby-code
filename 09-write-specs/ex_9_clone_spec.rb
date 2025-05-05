class Document 
  attr_reader :title, :author, :content

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
  end

  def clone
    Document.new( title.clone, author.clone, content.clone )
  end
end

describe Document do
  it 'should have a functional clone method' do
    doc1 = Document.new( 'title', 'author', 'some stuff' )
    doc2 = doc1.clone

    expect(doc2.title).to eq('title')
    expect(doc2.author).to eq('author')
    expect(doc2.content).to eq('some stuff')

    # Ensure doc1 and doc2 are different objects
    expect(doc1).not_to equal(doc2)

    # Check that the cloned document has different object IDs for its attributes
    expect(doc2.title).to eq(doc1.title)
    expect(doc2.author).to eq(doc1.author)
    expect(doc2.content).to eq(doc1.content)
  end
end

# run: rspec 09-write-specs/ex_9_clone_spec.rb
