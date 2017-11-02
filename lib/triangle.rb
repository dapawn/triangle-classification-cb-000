require "pry"
class Triangle
  def initialize(side1,side2,side3)
    @sides[0] = side1
    @sides[1] = side2
    @sides[2] = side3
    @sides.sort!
    #binding.pry
    if (@sides[0] <= 0 || (@sides[0] + @sides[1] <= @sides[2]))
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end

  def kind
    if (@sides[0] == @sides[1] && @sides[1] == @sides[2])
      :equilateral
    elsif (@sides[1] == @sides[2])
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
  def message
    "All sides have to be greater than 0."
  end
end
