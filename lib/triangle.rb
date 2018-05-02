class Triangle
  # write code here
  def initialize(side1,side2,side3)
    @s1 = side1
    @s2 = side2
    @s3 = side3
  end

  def kind 
    sides = [@s1,@s2,@s3].sort
    tri_law = (sides[0] + sides[1]) > sides[2] && sides.none? {|x| x<0} && !sides.include?(0) 
    sides.uniq!
    if tri_law
      if sides.length == 1 && !sides.include?(0)
        return :equilateral
      elsif sides.length == 2
        return :isosceles
      elsif sides.length == 3
        return :scalene
      end
    else 
        raise TriangleError
    end

  end
#  if person.class != Person
#    begin
#      raise PartnerError
#    rescue PartnerError => error
#        puts error.message
#    end
#  else
#    person.partner = self
#  end
  class TriangleError < StandardError
    # triangle error code
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end
end


