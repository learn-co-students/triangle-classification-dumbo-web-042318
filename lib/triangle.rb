require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError
    elsif side1 + side2 <= side3 || side1 + side3 <= side2 || side2 + side3 <= side1
      raise TriangleError
    end
    if self.side1 == self.side2 && self.side1 == self.side3
      :equilateral
    elsif self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "A trialngle side can't be 0"
    end
  end
end
#binding.pry
true
