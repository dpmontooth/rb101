# figure out the total age of the male members of the family in the given hash

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

# algorithm-----
# initialize empty array to recieve age data
# iterate through name keys
# if value at "gender" key in sub hash == "male" append value from "age" to
# age data array
# sum or reduce values in age data array and print total

age_data = []
munsters.each do |_, details|
  age_data << details["age"] if details["gender"] == "male"
end

p age_data.reduce(:+)
p age_data
p age_data.sum
