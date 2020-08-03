require_relative '../test_framework.rb'
require_relative '../lib/count_even_numbers.rb'
require 'colorize'

# Acceptance Criteria
# acceptance_criteria = [[[1,2,3,4,5,6], 3],
#  [[0,1,2], 2],
#  [[1,3,5], 0]]
# acceptance_criteria.each do |test|
# # Set up, execute
#     actual = count_even_numbers(test[0])
#     expected = test[1]
# # Verify
#     puts assert_equals(actual, expected)
# end

def it (string)
  yield
end

it 'counts number of evens in [1,2,3,4,5,6]: ' do
  # Set up, Execute
  actual = count_even_numbers([1,2,3,4,5,6])
  expected = 3

  # Verify
  if assert_equals(actual, expected)
    puts "correct".green
  else
    puts "expected: #{expected}\nbut got: #{actual}".red
  end
end

it 'counts number of evens in [1,3,5]: ' do
  # Set up, Execute
  actual = count_even_numbers([1,3,5])
  expected = 0

  # Verify
  if assert_equals(actual, expected)
    puts "correct".green
  else
    puts "expected: #{expected}\nbut got: #{actual}".red
  end
end

it 'counts number of evens in [0,1,2]: ' do
  # Set up, Execute
  actual = count_even_numbers([0,1,2])
  expected = 2

  # Verify
  if assert_equals(actual, expected)
    puts "correct".green
  else
    puts "expected: #{expected}\nbut got: #{actual}".red
  end
end