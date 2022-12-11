# frozen_string_literal: true

# class SecondClass
class SecondClass
  include Enumerable
  def each
    q = 1.0
    loop do
      yield q
      q = (1 / q) + 1
    end
  end
end
