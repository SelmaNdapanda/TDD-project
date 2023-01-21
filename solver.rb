class Solver
  def factorial(num)
    raise 'NegativeNumberFactorialError' if num.negative?

    num.zero? ? 1 : (1..num).reduce(1, :*)
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
    return 'buzz' if (num % 5).zero?
    return 'fizz' if (num % 3).zero?

    num.to_s
  end
end
