class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if self.side1 == self.side2 && self.side2 == self.side3
      return :equilateral
    elsif self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
      return :isosceles
    elsif (self.side1 > 0 && self.side2 > 0 && self.side3 > 0) && ((self.side1 + self.side2) > self.side3 || (self.side2 + self.side3) > self.side1 || (self.side1 + self.side3 > self.side2))
      return :scalene
    elsif self.side == 0 && self.side2 == 0 && self.side3 == 0
      begin
       raise TriangleError
     rescue TriangleError => error
         puts error.message
     end

    end
  end

  class TriangleError < StandardError
      def message
        "Please provide a triangle."
      end
  end
end
