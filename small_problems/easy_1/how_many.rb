# write a method that counts number of occurrences of each element in given
# array.  Words are case sensitive

# input: array of strings
# output: print element and corresponding number of occurrences

# data type: array of strings input, need output to contain string and integer

# algorithm ----
# identify unique items in array
# count number of occurrences of each item

def count_occurrences(arr)
  unique_words = arr.uniq
  word_hash = {}
  unique_words.each do |word|
    word_hash[word] = arr.count(word)
  end
  word_hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle',
  'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
