class Document
  attr_reader :pretentious_density, :informal_density

  def initialize( pretentious, informal )
    @pretentious_density = pretentious
    @informal_density = informal
  end

  # Most of class omitted...

  def prose_rating
    rating = :about_right 

    if pretentious_density > 0.3 
      if informal_density < 0.2 
        rating = :really_pretentious 
      else 
        rating = :somewhat_pretentious 
      end 
    elsif pretentious_density < 0.1 
      if informal_density > 0.3 
        rating = :really_informal 
      else 
        rating = :somewhat_informal 
      end 
    end 

    rating 
  end
end

load '10-construct-your-classes/ex_8_prose_rating_specs.rb'
