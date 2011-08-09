module Inches

  def inch
    self
  end

  def inches
    self
  end

end

class Fixnum
  include Inches
end