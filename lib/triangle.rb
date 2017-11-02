class Triangle
  def initialize(side1,side2,side3)
    if side1 <= 0 || side2 <=0 || side3 <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      @side1 = side1
      @side2 = side2
      @side3 = side3
    end
  end

  def kind
    if (side1 == side2 && side2 == side3)
      :equilateral
    elsif (side1 == side2 || side2 == side3 || side1 == side3)
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
