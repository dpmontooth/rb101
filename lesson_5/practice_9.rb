# order sub-arrays alphabetically or numerically in descending order

# algorithm ------
# iterate over each element sorting the sub-array in descending order
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted = arr.map do |sub_arr|
  sub_arr.sort {|a, b| b <=> a}
end

p arr
p sorted
