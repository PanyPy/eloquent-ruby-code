require_relative './ex_5_printable_document.rb'

describe PrintableDocument do
  before :each do
    @text = 'A bunch of words'
    @doc = PrintableDocument.new( 'test', 'nobody', @text )
  end

  it 'should know how to print itself' do
    # Use RSpec's `double` instead of `stub`, because `stub` is deprecated in modern RSpec versions (>= 3.x)
    stub_printer = double("Printer", available?: true, render: nil)

    expect(@doc.print(stub_printer)).to eq('Done')
  end

  it 'should return the proper string if printer is offline' do
    # Use RSpec's `double` instead of `stub`, because `stub` is deprecated in modern RSpec versions (>= 3.x)
    stub_printer = double("Printer", available?: false, render: nil)

    expect(@doc.print(stub_printer)).to eq('Printer unavailable')
  end
end

describe 'stubbing an apparently long string' do
  it 'should know how to make a string look long' do 
    apparently_long_string = 'actually short'

    # This stubs the `length` method on the specific string instance
    allow(apparently_long_string).to receive(:length).and_return(1_000_000)

    expect(apparently_long_string).to eq('actually short')
    expect(apparently_long_string.length).to eq(1_000_000)
  end
end
