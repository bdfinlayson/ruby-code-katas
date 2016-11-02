require_relative 'multiples'

range, *numbers = ARGV
result = Multiples.compute(range, numbers)
print result


