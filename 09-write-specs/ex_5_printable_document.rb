require_relative '../01-write-code-like-ruby/ex_1_document.rb' 

class PrintableDocument < Document
  def print( printer )
    return 'Printer unavailable' unless printer.available?
    printer.render( "#{title}\n" )
    printer.render( "By #{author}\n" )
    printer.render( content )
    'Done'
  end
end
