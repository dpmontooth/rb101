flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# initialize empty return hash
flint_hash = {}
# set return_hash[element] = index
flintstones.each_with_index do |name, index|
  flint_hash[name] = index
end

p flint_hash 
