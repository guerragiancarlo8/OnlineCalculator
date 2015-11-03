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

class TimeZone
  def initialize
  end

  def return_time city
    case city.downcase
    when "moscow"
      time = (Time.now + 2*60*60).strftime('%H:%M')
      "The time in Moscow is #{time}"
    when "tokyo"
      time = (Time.now + 8*60*60).strftime('%H:%M')
      "The time in Tokyo is #{time}"
    when "new york"
      time = (Time.now - 6*60*60).strftime('%H:%M')
      "The time in New York is #{time}"
    else
      "city not available"
    end
  end
end
