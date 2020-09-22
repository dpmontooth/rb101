# Show two ways to put "Four score and " in front of provided string

famous_words = "seven years ago..."

p "Four score and " + famous_words

p "Four score and " << famous_words

p famous_words.prepend("Four score and ")

p famous_words
