# use the each method to output all of the vowels from given strings

hsh = {
  first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}

vowels_reference = %w(a e i o u A E I O U) # vowel reference array
char_dump =[]

hsh.each do |_, word|
  char_dump << word.join.chars
end

char_dump.flatten.keep_if{|char| vowels_reference.include?(char)}
