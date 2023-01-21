class Solver
  def factorial(num)
    raise 'NegativeNumberFactorialError' if num.negative?
    num.zero? ? 1 : (1..num).reduce(1, :*)
  end

  def reverse(word)
    word.reverse
  end
end