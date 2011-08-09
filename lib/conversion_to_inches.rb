module ConversionToInches

  def inch
    inches
  end

  def inches
    Inches.new(self)
  end

end

class Fixnum
  include ConversionToInches
end