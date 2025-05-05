require_relative '../01-write-code-like-ruby/ex_1_document.rb' 

describe Document do
  it 'should hold on to the contents' do
    text = 'A bunch of words'
    doc = Document.new( 'test', 'nobody', text )
    expect(doc.content).to eq(text)
  end

  it 'should return all of the words in the document' do
    text = 'A bunch of words'
    doc = Document.new( 'test', 'nobody', text )

    expect(doc.words).to include('A')
    expect(doc.words).to include('bunch')
    expect(doc.words).to include('of')
    expect(doc.words).to include('words')
  end

  it 'should know how many words it contains' do
    text = 'A bunch of words'
    doc = Document.new( 'test', 'nobody', text ) 
    expect(doc.word_count).to eq(4)
  end
end
