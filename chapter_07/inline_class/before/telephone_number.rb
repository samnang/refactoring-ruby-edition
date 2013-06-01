class TelephoneNumber
  attr_accessor :area_code, :number

  def telephone_number
    '(' + area_code + ')' + number
  end
end
