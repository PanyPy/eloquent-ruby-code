require 'test/unit'
require 'shoulda'
require_relative '../01-write-code-like-ruby/ex_1_document.rb'

class DocumentTest < Test::Unit::TestCase
  context 'A basic document class' do
    setup do
      @text = 'A bunch of words' 
      @doc = Document.new('a test', 'russ', @text) 
    end 

    should 'hold on to the contents' do
      assert_equal @text, @doc.content, 'Contents still there' 
    end

    # Rest of the test omitted...
  end
end 

