# create nested array then un-nest the array

flintstones = ['Fred', 'Wilma']
flintstones << ['Barney', 'Betty']
flintstones << ['BamBam', 'Pebbles']
p flintstones

p flintstones.flatten!
