arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

#expected output = same structure containing only multiples of 3

# iterate over each element of outer array using map
# iterate over each element of sub-array using select
# evaluate to return true if integer is multiple of 3

new_arr = arr.map do |sub_arr|
  sub_arr.select do |int|
    int % 3 == 0
  end
end

p new_arr 
