class StringCalculator
  def add(input)
    return 0 if input.empty?
    return input.to_i if contains_a_single_number(input)
  end

  def contains_a_single_number(input)
    input.length == 1 && (input =~ /[0-9]/) == 0 && input.to_i  >= 0
  end
end