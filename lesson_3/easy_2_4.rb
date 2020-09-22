# check if substring appears in string

advice = "Few things in life are as important as house training your pet dinosaur"

p advice.include?("Dino")
p advice.include?("dino")

p advice.match?("Dino")
p advice.match?("dino")
