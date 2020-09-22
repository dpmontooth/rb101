flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones

answer_index = 0
flintstones.each_with_index do |element, index|
  first_two = element.chars.take(2).join.downcase
  if first_two == "be"
    answer_index = index
    break
  end
end

p answer_index

p flintstones.index { |name| name[0, 2] == "Be" }
