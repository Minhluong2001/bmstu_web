# frozen_string_literal: true

# class FirstClass
class FirstClass
  def work(epsilon)
    q = 1.0
    q = (1 / q) + 1 while (q - 1.618033989).abs > epsilon
    q
  end
end
