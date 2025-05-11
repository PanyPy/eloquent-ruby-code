require_relative '../10-construct-your-classes/ex_3_compressor.rb'

describe TextCompressor do
  it "should be able to add some text" do
    compressor = TextCompressor.new( '' )
    compressor.add_text( 'first second' )
    expect(compressor.unique).to eq([ 'first', 'second' ])
    expect(compressor.index).to eq([0, 1])
  end

  it "should be able to add a word" do
    compressor = TextCompressor.new( '' )
    compressor.add_word( 'first' )
    expect(compressor.unique).to eq([ 'first' ])
    expect(compressor.index).to eq([0])
  end

  it "should be able to find the index of a word" do
    compressor = TextCompressor.new( 'hello world' )
    expect(compressor.unique_index_of('hello')).to eq(0)
    expect(compressor.unique_index_of('world')).to eq(1)
  end
end
