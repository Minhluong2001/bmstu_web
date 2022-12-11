# frozen_string_literal: true

# class SecondClass for solution part 2 in lab 5
class SecondClass
  def self.part2(str)
    return false unless str.select { |x| x.match?(/^-?\d+$/) }

    str.map!(&:to_i).chunk { |y| y }.map { |_y, ys| ys.length }.max
  end
end
