class Document
  attr_reader :pretentious_density, :informal_density

  def initialize( pretentious, informal )
    @pretentious_density = pretentious
    @informal_density = informal
  end

  # Most of class omitted...

  def prose_rating
    return :really_pretentious if really_pretentious?
    return :somewhat_pretentious if somewhat_pretentious?
    return :really_informal if really_informal?
    return :somewhat_informal if  somewhat_informal?
    return :about_right
  end

  def really_pretentious?
    pretentious_density > 0.3 && informal_density < 0.2
  end

  def somewhat_pretentious?
    pretentious_density > 0.3 && informal_density >= 0.2
  end

  def really_informal?
    pretentious_density < 0.1 && informal_density > 0.3
  end

  def somewhat_informal?
    pretentious_density < 0.1 &&  informal_density <= 0.3
  end
end

load '10-construct-your-classes/ex_8_prose_rating_specs.rb'
