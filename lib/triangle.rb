class Triangle
  
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
    if !check_sides
      raise TriangleError
    end
  end

  def check_sides
    @s1 > 0 && @s2 > 0 && @s3 > 0 && #all sides are > 0
    @s1 + @s2 > @s3 && 
    @s1 + @s3 > @s2 && 
    @s2 + @s3 > @s1 #no side greater than sum of other sides
  end

  def kind
    if s1 == s2 && s1 == s3
      return :equilateral
    elsif s1 == s2 || s1 == s3 || s2 == s3
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle"
    end
  end

end
