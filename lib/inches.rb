class InvalidLengthError < RuntimeError
end

class Inches

  def initialize(total_number_of_inches)
    raise InvalidLengthError if total_number_of_inches < 0
    @total_number_of_inches = total_number_of_inches
  end

  def in_carpenters_notation
    CarpentersNotation.new(@total_number_of_inches/12, @total_number_of_inches % 12)
  end

end

