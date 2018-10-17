class CollatzConjecture

  def self.steps(number)
    counter = 0
    raise ArgumentError if number < 1
    while number > 1
      #if positive
      if number % 2 == 0
        number = number / 2
        counter += 1
      else
        number = (number*3) + 1
        counter += 1
      end
    end

    counter
  end
end