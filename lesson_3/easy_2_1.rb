# check hash to see if specific key is present

ages = { 'Herman' => 32, 'Lily' => 30, 'Grandpa' => 402, 'Eddie' => 10 }

p ages.key?("Spot")

p ages.include?("Spot")

p ages.member?("Spot")

p ages.key?("Herman")

p ages.include?("Lily")

p ages.member?("Eddie")
