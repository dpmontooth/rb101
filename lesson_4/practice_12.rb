ages = {
  "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
  "Eddie" => 10, "Marilyn" => 22, "Spot" => 237
}

p age_total = ages.values.sum

p ages.values.inject(:+)

p ages.values.reduce(:+)
