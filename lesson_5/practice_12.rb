# return a hash that shows the two elements in sub array as key and value
# respectively

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
answer_hash = {}

arr.each do |sub_arr|
  answer_hash[sub_arr[0]] = sub_arr[1]
end

p answer_hash
