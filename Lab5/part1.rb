# frozen_string_literal: true

# class FirstClass for solution part 1 in lab 5
class FirstClass
    def part1(num_1, num_2)
      return 'Bad input, exit...' unless (num_1).match?(/^-?\d+(\.?\d+|)$/) && ((num_2).match?(/^-?\d+(\.?\d+|)$/))
      num1 = Float(num_1)
      num2 = Float(num_2)
      Math.sin(35.5 * num2 / (num1 - 5)) + num1**2 / (2 * Math.exp(num1))
    end
  end