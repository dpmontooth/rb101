# use map to return new array of identical structure having each value
# incremented by 1

original = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_hash = original.map do |hash|
  incremented_hash = {}
  hash.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

p new_hash
