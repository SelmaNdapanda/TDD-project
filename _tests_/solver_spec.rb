require_relative '../solver'

describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns the factorial of a positive number' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'raises an error when given a negative number' do
      expect { solver.factorial(-5) }.to raise_error(StandardError, 'NegativeNumberFactorialError')
    end

    it 'Returns 1 when argument passed is 0' do
      expect(solver.factorial(0)).to eq(1)
    end
  end

  describe '#reverse' do
    it 'returns the reverse of a word' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe 'fizzbuzz' do
    it 'returns fizz when argument passed is divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
    end
    it 'returns buzz when argument passed is divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
    end
    it 'returns fizzbuzz when argument passed is divisible by 3 & 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'returns n as a string when argument passed is neither divisible by 3 nor 5' do
      expect(solver.fizzbuzz(7)).to eq('7')
    end
    it 'returns n as a string when argument passed is neither divisible by 3 nor 5' do
      expect(solver.fizzbuzz(7)).not_to eq(7)
    end
  end
end
