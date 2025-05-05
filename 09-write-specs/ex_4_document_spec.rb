require_relative '../01-write-code-like-ruby/ex_1_document.rb' 

describe Document do
  let(:text) { 'A bunch of words' }
  let(:doc)  { Document.new('test', 'nobody', text) }

  it 'should hold on to the contents' do
    expect(@doc.content).to eq(@text)
  end

  it 'should know which words it has' do
    expect(doc.words).to include('A')
    expect(doc.words).to include('bunch')
    expect(doc.words).to include('of')
    expect(doc.words).to include('words')
  end

  it 'should know how many words it contains' do
    expect(doc.word_count).to eq(4)
  end
end
