require './test_framework.rb'

p assert_equals(3,count_even_numbers([1,2,3,4,5,6]))
p assert_equals(2,count_even_numbers([0,1,2]))
p assert_equals(0,count_even_numbers([1,3,5]))