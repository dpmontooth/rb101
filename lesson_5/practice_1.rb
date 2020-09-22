# order array of number strings by descending numeric value

arr = ['10', '11', '9', '7', '8']

# my solution ------
# int_arr = arr.map { |str| str.to_i }
# int_arr.sort! { |a, b| b <=> a }
# arr = int_arr.map { |int| int.to_s }
# p arr

arr.sort do |a,b|
  b.to_i <=> a.to_i
end
