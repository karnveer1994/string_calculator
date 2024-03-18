class StringCalculator
  def add(input)
    return 0 if input.empty?
    return input.to_i if contains_a_single_number(input)
    return "Invalid Input" if input.end_with?("\n")
    sum_of_numbers(input)
  end

  def contains_a_single_number(input)
    input.length == 1 && (input =~ /[0-9]/) == 0 && input.to_i  >= 0
  end

  def contains_a_delimiter(input)
    input.start_with?("//")
  end

  def sum_of_numbers(input)
    if contains_a_delimiter(input)
      delimiter = input.split("//").last[0]
      numbers = input.split("\n").last.split(delimiter).map(&:to_i)
    else
      numbers = input.split(/[,\n]/).map(&:to_i)
    end
    negative_numbers = get_negative_numbers(numbers)
    return "Negative Numbers not allowed #{negative_numbers.join(",")}" unless negative_numbers.empty?
    numbers.sum
  end

  def get_negative_numbers(numbers)
    numbers.select{ |n| n < 0 }
  end
end