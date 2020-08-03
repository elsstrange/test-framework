def count_even_numbers(ary)
  counter = 0
  ary.each do |i|
    if i % 2 == 0
      counter += 1
    end
  end
  counter
end
