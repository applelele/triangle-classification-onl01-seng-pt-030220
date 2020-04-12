class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind(side1, side2, side3)
    if  (self.side1 < 0 || self.side2 < 0 || self.side3 < 0) || (self.side == nil && self.side2 == nil && self.side3 == nil) || !((self.side1 + self.side2) > self.side3 || (self.side2 + self.side3) > self.side1 || (self.side1 + self.side3 > self.side2))
      begin
       raise TriangleError
     rescue TriangleError => error
         puts error.message
     end
     elsif self.side1 == self.side2 && self.side2 == self.side3
      return :equilateral
    elsif self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
      return :isosceles
    elsif (self.side1 > 0 && self.side2 > 0 && self.side3 > 0) && ((self.side1 + self.side2) > self.side3 || (self.side2 + self.side3) > self.side1 || (self.side1 + self.side3 > self.side2))
      return :scalene

    end
  end

  class TriangleError < StandardError
      def message
        "Please provide a triangle."
      end
  end
end
