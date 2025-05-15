
describe Time do
  it 'should work when adding a integer to a Time' do
    now = Time.now
    one_minute_from_now = now + 60

    expect(one_minute_from_now - now).to eq(60)
    expect { 60 + now }.to raise_error(TypeError)
  end
end

describe 'format string' do
  it 'should work with a simple example' do
    expect("The value of n is %d" % 42).to eq('The value of n is 42')
  end

  it 'should on dates' do
    day = 4
    month = 7
    year = 1776

    file_name = 'file_%02d%02d%d' % [ day, month, year ]
    expect(file_name).to eq('file_04071776')

    file_name = sprintf( 'file_%02d%02d%d' , day, month, year )
    expect(file_name).to eq('file_04071776')
  end
end
