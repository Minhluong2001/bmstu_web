# frozen_string_literal: true

require_relative 'part1'
require_relative 'part2'
require_relative 'part3'

printf 'Select part (1..3): '
sel = gets
sel = sel.match?(/^\d$/) ? Integer(sel) : 0
case sel
when 1
  print(' Enter first number: ')
  num1 = gets
  print(' Enter first number: ')
  num2 = gets
  print('Result: ')
  puts FirstClass.new.part1(num1, num2)

when 2
  print('Enter array: ')
  str = gets.chomp.split
  # str.map!(&:to_i)
  print('The number of elements appearing the most: ')
  puts SecondClass.part2(str)

  puts('---------------------------------')

when 3
  puts 'Enter length:'
  n = gets.chomp.to_i
  puts 'Enter your text:'
  $/ = '.'
  string = $stdin.gets
  puts 'String:'
  puts string
  puts 'Result:'
  puts ThirdClass.new.work(string, n)
else
  p 'Bad input , exit ...'
end
