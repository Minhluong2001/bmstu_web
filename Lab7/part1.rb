# frozen_string_literal: true

# class FirsrClass for solution part 1 in lab 7
class FirstClass
  def self.create_file(str)
    f = File.new('text.txt', 'w')
    f.write(str)
    f.close
  end

  def self.amount(string)
    f = File.open(string, 'r')
    str = f.read
    # arr = str.split(' ')
    str.split(' ').each.select { |arr| arr.count('^ ') > 5 }
  end
end
