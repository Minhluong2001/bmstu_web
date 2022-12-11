# frozen_string_literal: true

# This class for solution part2 in lab7
class Number
  def initialize(num)
    @num = num
  end

  def count_number
    @num.digits.count
  end
end

# class Number_string for solution part2 in lab7 (children class)
class NumberString < Number
  @str = ''
  def initialize(num, str)
    super(num)
    @str = str
  end

  def print
    puts "Number: #{@num}"
    puts "String: #{@str} "
  end

  def count_letter
    @str.count('a-zA-Z')
  end
end
