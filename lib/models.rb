class Calculator
  def initialize
  end

  def add_numbers first_number, second_number
    result = first_number + second_number
    "The addition of #{first_number} and #{second_number} is #{result}"
  end

  def subtract_numbers first_number, second_number
    result = first_number - second_number
    "The subtract of #{first_number} and #{second_number} is #{result}"
  end

  def multiply_numbers first_number, second_number
    result = first_number * second_number
    "The multiplication of #{first_number} and #{second_number} is #{result}"
  end

  def divide_numbers first_number, second_number
    result = first_number / second_number
    "The division of #{first_number} and #{second_number} is #{result}"
  end

end