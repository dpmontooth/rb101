VALID_CHOICES = ['r', 'p', 'sc', 'l', 'sp']

choice_hash = {
              'r': 'rock', 'p': 'paper', 'sc': 'scissors',
              'l': 'lizard', 'sp': 'spock'
              }

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  ((first == 'r') && (second == ('sc' || 'l'))) ||
    ((first == 'p') && (second == ('r'||'sp'))) ||
    ((first == 'sc') && (second == ('l'||'p'))) ||
    ((first == 'l') && (second == ('sp'||'p'))) ||
    ((first == 'sp') && (second == ('sc'||'r')))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

score_hash = { player: 0, computer: 0 }
def count_score(player, computer)
  if win?(player, computer)
    score_hash[player]+=1
  elsif win?(computer, player)
    score_hash[computer]+=1
  end
end

def display_score
  puts score_hash
end


loop do
  choice = ''
  loop do
    puts choice_prompt = <<-MSG
    Select from the following options:
    'r' for rock
    'p' for paper
    'sc' for scissors
    'l' for lizard
    'sp' for spock
    MSG
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts("You chose: #{choice_hash[choice.to_sym]};
  Computer chose:#{choice_hash[computer_choice.to_sym]}")

  display_results(choice, computer_choice)
  count_score(choice, computer_choice)
  display_score

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
