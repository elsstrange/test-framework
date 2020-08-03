require './test_framework.rb'

# Acceptance Criteria
acceptance_criteria = [[[1,2,3,4,5,6], 3],
 [[0,1,2], 2], 
 [[1,3,5], 0]]
acceptance_criteria.each do |test|
# Set up, execute
    actual = count_even_numbers(test[0])
    expected = test[1]
# Verify
    puts assert_equals(actual, expected)
end