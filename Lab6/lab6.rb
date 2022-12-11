# frozen_string_literal: true

require_relative 'part1'
require_relative 'part2'
require_relative 'part3'

printf 'Select part (1..3): '
sel = gets
sel = sel.match?(/^[1-3]$/) ? Integer(sel) : 0
case sel
when 1
  puts ' Input accuracy: '
  eps = gets.chop.to_f
  puts FirstClass.new.work(eps)

when 2

  puts 'Input accuracy: '
  eps = gets.chop.to_f
  puts(SecondClass.new.find { |x| (x - 1.618033989).abs <= eps })

when 3
  first = ->(x) { Math.sin(x) / x }
  second = ->(x) { Math.tan(x + 1) / (x + 1) }

  p = Integral.new(0.1, 1, 1_000_000)
  puts "First function (lambda function): #{p.intg(&first)}"

  p = Integral.new(1, 2, 1_000_000)
  puts "Second function (lambda function): #{p.intg(&second)}"

  p = Integral.new(0.1, 1, 1_000_000)
  puts "First function (with block): #{p.intg { |x| Math.sin(x) / x }}"

  p = Integral.new(1, 2, 1_000_000)
  puts "Second function (with block): #{p.intg { |x| Math.tan(x + 1) / (x + 1) }}"

else
  p 'Bad input, exit...'
end
