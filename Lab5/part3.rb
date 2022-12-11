# frozen_string_literal: true

# class ThirdClass for solution part 3 in lab 5
class ThirdClass
  # def check(str)
  #   str.map{|x| x.match?(/^[a-zA-Z]+(-?[a-zA-Z]+|) [a-zA-Z]+([a-zA-Z]+|)$/)}.reduce { |x, y| x && y }
  # end
  def line(arr, num, pos)
    arr.each_with_index.map do |item, index|
      if index == arr.length - 1
        item
      else
        item + (index < pos ? (' ' * (num + 1)) : (' ' * num))
      end
    end.join
  end

  def cal(str, arr, length)
    num = length - str.length
    co = arr.length - 1
    [num / co + 1, num % co]
  end

  def work(str, length)
    # return 'Bad input, exit...' unless check(str)

    str.split("\n").each.map do |item|
      if (arr = item.split(' ')).length > 1
        line(arr, *cal(item, arr, length))
      else
        item
      end
    end.join("\n")
  end
end
