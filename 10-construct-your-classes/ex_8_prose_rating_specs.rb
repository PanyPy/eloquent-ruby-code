

describe 'Pretentions ratings' do
  it 'should return the right rating' do

    expect(Document.new( 1.0,  0.1 ).prose_rating).to eq :really_pretentious
    expect(Document.new( 1.0,  0.199 ).prose_rating).to eq :really_pretentious
    expect(Document.new( 1.0,  0.3 ).prose_rating).to eq :somewhat_pretentious
    expect(Document.new( 1.0,  0.4 ).prose_rating).to eq :somewhat_pretentious
    
    expect(Document.new( 0.2,  0.1 ).prose_rating).to eq :about_right
    expect(Document.new( 0.2,  0.199 ).prose_rating).to eq :about_right
    expect(Document.new( 0.19,  0.9 ).prose_rating).to eq :about_right
    
    expect(Document.new( 0.0,  0.4 ).prose_rating).to eq :really_informal
    expect(Document.new( 0.05,  0.29 ).prose_rating).to eq :somewhat_informal
  end

end
