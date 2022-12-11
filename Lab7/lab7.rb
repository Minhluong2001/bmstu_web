# frozen_string_literal: true

require_relative 'part1'
require_relative 'part2'

printf 'Select part (1..2): '
sel = gets
sel = sel.match?(/^[1-2]$/) ? Integer(sel) : 0
case sel
when 1
  puts ' Input string: '
  str = $stdin.gets
  FirstClass.create_file(str)
  puts FirstClass.amount('text.txt')

when 2
  print 'Input number: '
  num = gets.chomp.to_i
  puts 'Input string: '
  str = $stdin.gets
  puts '-------------------------------------'
  tr = Number.new(num)
  trtr = NumberString.new(num, str)
  puts trtr.print
  print ' Print the number of digits in a number: '
  puts tr.count_number
  print ' Print the number of letters in a string: '
  puts trtr.count_letter
else
  p 'Bad input, exit...'
end
