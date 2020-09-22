# order array of hashes based on year of book publication from earliest to
# latest

# input: Array of hashes containing details for each book
# output: sorted array of hashes by book publication date

# algorithm-----
# for each element identify value associated with key published
# sort each element by contents of key published converted to integer

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

puts books.sort_by {|book| book[:published].to_i}
