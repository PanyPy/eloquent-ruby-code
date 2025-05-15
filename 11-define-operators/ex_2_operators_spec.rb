require_relative '../01-write-code-like-ruby/ex_1_document.rb' 

class Document
  def !
    Document.new( title, author, "It is not true: #{content}")
  end

  def +@ 
    Document.new( title, author, "I am sure that #{@content}" ) 
  end 

  def -@ 
    Document.new( title, author, "I doubt that #{@content}" ) 
  end 

  def [](index) 
    words[index] 
  end 
end

describe Document do
  it 'should work using a negation argument' do
    favorite = Document.new( 'Favorite', 'Russ', 'Chocolate is best') ##+fav

    expect(favorite.content).to match(/Choc.*best/)
    expect((!favorite).content).to match(/It is not.*best/)
  end

  it 'should work with unanary -+ ops' do
    favorite = Document.new('Favorite', 'Russ', 'Chocolate is best')
    unsure = -(+favorite)

    expect(unsure.content).to eq('I doubt that I am sure that Chocolate is best')
  end

  it 'should have [] operator' do
    doc = Document.new('Favorite', 'Russ', 'Chocolate is best')

    expect(doc[0]).to eq('Chocolate')
    expect(doc[1]).to eq('is')
  end
end

