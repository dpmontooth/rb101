ages = {
  "Herman" => 32, "Lily" => 30, "Grandpa" => 5843,
  "Eddie" => 10, "Marilyn" => 22, "Spot" => 237
}

minimum_age = 0
current_age = 0
ages.each_with_index do |(_,age), index|
  current_age = age
  if index == 0
    minimum_age = current_age
  elsif current_age < minimum_age
    minimum_age = current_age
  end
  p minimum_age
end

p ages

p ages.values

p ages.values.min
