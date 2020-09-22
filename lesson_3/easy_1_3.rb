# method to replace the word "important" with the word "urgent" in a string

str = "few things in life are as important as house training your pet dinosaur"
p "This is solution 1 string before change: #{str}"
string_array = str.split

count = 0
string_array.map do |word|

  if word == 'important'
    string_array[count] = 'urgent'
  end
  count += 1
end
str = string_array.join(" ")
p "This is solution 1 string after change: #{str}"


advice = "Few things in life are as important as house training your pet dino"
p "This is solution 2 string before change: #{advice}"
advice.gsub!('important', 'urgent')
p "This is solution 2 string after change: #{advice}"
