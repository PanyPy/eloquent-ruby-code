describe 'mocking with rspec' do
  before :each do
    # Using `double` instead of `mock`
    # We use `double` to create test doubles for the `@doc` object. 
    # A test double is an object that stands in for a real object in tests and allows you to set expectations on method calls.
    # In RSpec 3.x, `mock` is replaced with `double` to make the code more explicit.
    @doc = double('Document')  # `double` is a more descriptive, modern replacement for `mock`
    # Set the expectation for the `check_spelling` method on the @doc double to return 'correct'
    allow(@doc).to receive(:check_spelling).and_return('correct')
  end

  it 'should know how to print itself' do
    # Using `double` instead of `mock` to create the `mock_printer` test double.
    # A test double for the Printer is created to simulate interactions with a Printer object.
    mock_printer = double('Printer')  # Using `double` here to simulate the printer.
    
    # We set up expectations for the `available?` and `render` methods on the mock_printer double.
    allow(mock_printer).to receive(:available?).and_return(true)
    # Expect the `render` method to be called exactly 3 times during the test.
    expect(mock_printer).to receive(:render).exactly(3).times
    
    # Call the `check_spelling` method on the `@doc` double, passing the `mock_printer` as an argument.
    # The return value of check_spelling is 'correct' as set up in the `before` block.
    expect(@doc.check_spelling(mock_printer)).to eq('correct')

    # Simulate calling the available? method and render 3 times on the mock_printer double
    expect(mock_printer.available?).to be true  # Check if the printer is available (stubbed to return true)
    3.times { mock_printer.render }  # Simulate calling the render method 3 times
  end
end
