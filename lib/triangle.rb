require "pry"

class Triangle
  attr_accessor :side1, :side2, :side3
  @sides = []

  def initialize(side1, side2, side3)
    @side1, @side2, @side3 = side1, side2, side3
    @sides = [side1, side2, side3]
  end

  def kind
    if negative? == true || valid? == false
      # begin
       raise TriangleError
    #  rescue TriangleError => error
        #  puts error.message
    #  end
   elsif self.equilateral
      return :equilateral
    elsif self.isosceles
      return :isosceles
    elsif self.scalene
      return :scalene
    end
  end

  def negative?
    @sides.each do |length|
      if length <= 0
        return true
      end
    end
  end

  def valid?
    (side1 + side2) > side3 && (side2 + side3) > side1 && (side1 + side3 > side2)
  end

  def equilateral
    side1 == side2 && side2 == side3
  end

  def isosceles
    side1 == side2 || side1 == side3 || side2 == side3
  end

  def scalene
    side1 != side2 && side1 != side3 && side2 != side3
  end

  class TriangleError < StandardError
      def message
        "Please provide valid lengths for the triangle."
      end
  end
end
