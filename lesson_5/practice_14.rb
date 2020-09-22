hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'}
}

answer = hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map {|color| color.capitalize}
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

p answer

# write some code to return an array containing the:
# colors of the fruits capitalized
# sizes of the vegetables in uppercase
