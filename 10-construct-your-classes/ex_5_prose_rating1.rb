class Document
  def initialize( pretentious, informal )
    @pretentious_density = pretentious
    @informal_density = informal
  end

  # Most of class omitted...

  def pretentious_density
    @pretentious_density
  end
  
  def informal_density
    @informal_density
  end
  
  def prose_rating 
    if pretentious_density > 0.3 
      if informal_density < 0.2 
        return :really_pretentious 
      else 
        return :somewhat_pretentious 
      end 
    elsif pretentious_density < 0.1 
      if informal_density > 0.3 
        return :really_informal 
      end 
      return :somewhat_informal 
    else 
      return :about_right 
    end 
  end
end

load '10-construct-your-classes/ex_8_prose_rating_specs.rb'
