statement = "The Flintstones Rock"

letter_hash = {}

keys = statement.chars.uniq.keep_if { |key| key != " "}

keys.each do |key|
  letter_hash[key] = statement.count(key)
end

p letter_hash
