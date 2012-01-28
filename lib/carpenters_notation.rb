class CarpentersNotation

  attr_reader :number_of_feet, :rest_in_inches

  def initialize(number_of_feet, rest_in_inches)
    @number_of_feet = number_of_feet
    @rest_in_inches = rest_in_inches
  end

  def contains_feet?
    @number_of_feet > 0
  end

  def contains_fractions_of_an_inch?
    rest_in_thirty_seconds_of_an_inch.between?(1, 31)
  end

  def contains_inches?
    rest_in_inches > 0
  end

  def inches_in_simplified_fraction
    greatest_common_divisor = rest_in_thirty_seconds_of_an_inch.gcd(32)
    numerator = rest_in_thirty_seconds_of_an_inch / greatest_common_divisor
    denominator = 32 / greatest_common_divisor
    return numerator, denominator
  end

  private

  def rest_in_thirty_seconds_of_an_inch
    (rest_in_inches * 32).round.to_i
  end


end