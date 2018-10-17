class PhoneNumber

  def self.clean(number)
    #strip number of anything but digits
    number = number.tr('^0-9', '')

    number_length = number.length
    # if number is too long, return nil
    return nil if number_length > 11
    # if number is too short, return nil
    return nil if number_length < 10


    if number_length == 11 && number[0] != "1"
      return nil
    elsif number_length == 11
      number = number[1..-1]
    end

    if number[-10] == "1" || number[-10] == "0"
      return nil
    elsif number[-7] == "1" || number[-7] == "0"
      return nil
    end
      

    
    number






  end
end
