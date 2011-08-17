class CarpentersMeasurement

  private_class_method :new

  def self.of number_of_inches
    display_the number_of_inches.in_carpenters_notation
  end

  def initialize measurement_in_carpenters_notation
    @measurement_in_carpenters_notation = measurement_in_carpenters_notation
  end

  def display
    display_the_number_of_feet + padding_between_feet_and_inches + display_the_inch_part
  end

  private

  def self.display_the measurement_in_carpenters_notation
    new(measurement_in_carpenters_notation).display
  end

  def display_the_inch_part
    return display_the_rest_in_fraction if (@measurement_in_carpenters_notation.rest_in_thirty_seconds_of_an_inch.between?(1, 31))
    display_the_number_of_inches
  end

  def display_the_number_of_feet
    return "" unless @measurement_in_carpenters_notation.number_of_feet > 0
    "#{@measurement_in_carpenters_notation.number_of_feet} #{@measurement_in_carpenters_notation.number_of_feet == 1 ? 'foot' : 'feet'}"
  end

  def display_the_number_of_inches
    return "" unless @measurement_in_carpenters_notation.rest_in_inches > 0 || @measurement_in_carpenters_notation.number_of_feet == 0
    "#{@measurement_in_carpenters_notation.rest_in_inches} #{@measurement_in_carpenters_notation.rest_in_inches == 1 ? 'inch' : 'inches'}"
  end

  def display_the_rest_in_fraction
    greatest_common_divisor = @measurement_in_carpenters_notation.rest_in_thirty_seconds_of_an_inch.gcd(32)
    numerator = @measurement_in_carpenters_notation.rest_in_thirty_seconds_of_an_inch / greatest_common_divisor
    denominator = 32 / greatest_common_divisor
    "#{numerator}/#{denominator} inch"
  end

  def padding_between_feet_and_inches
    @measurement_in_carpenters_notation.number_of_feet > 0 && @measurement_in_carpenters_notation.rest_in_inches > 0 ? " " : ""
  end

end