deck = {
  hearts: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace'],
  diamonds: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace'],
  clubs: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace'],
  spades: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king', 'ace']
}

def prompt(msg)
  puts "=>#{msg}"
end

def deal_cards!(player_cards, dealer_cards, deck)
  2.times do
    player_cards << select_card(deck)
    dealer_cards << select_card(deck)
  end
end

def select_card(deck) # select random card from deck
  random_suit = deck.keys.sample
  deck[random_suit].shuffle!.shift
end

def choose_ace(cards_in_play, ace_position) # decision for ace value
  low_cards = cards_in_play.select { |num| num.to_s.to_i != 0 }.sum
  if low_cards > 10
    cards_in_play[ace_position] = 1
  else
    cards_in_play[ace_position] = 11
  end
end

def hand_total(cards_in_play)
  cards_in_play.each_with_index do |card, position|
    case card
    when 'jack'
      cards_in_play[position] = 10
    when 'queen'
      cards_in_play[position] = 10
    when 'king'
      cards_in_play[position] = 10
    end
  end

  cards_in_play.each_with_index do |card, position|
    if card == 'ace'
      choose_ace(cards_in_play, position)
    end
  end
  cards_in_play.sum
end

def player_turn(player_cards, dealer_cards, deck)
  players_hand = 0
  loop do
    show_cards(player_cards, dealer_cards)
    players_hand = hand_total(player_cards)
    prompt "Total in hand: #{players_hand}"
    break if players_hand >= 21

    prompt "Hit or stay?"
    choice = gets.chomp.downcase
    break unless choice == 'hit'
    player_cards << select_card(deck)
  end
  players_hand
end

def dealer_turn(player_cards, dealer_cards, deck)
  dealer_hand = 0
  loop do
    show_all_cards(player_cards, dealer_cards)
    dealer_hand = hand_total(dealer_cards)
    prompt "Dealer's hand: #{dealer_hand}"

    if dealer_hand < 17
      prompt "Dealer hits"
      dealer_cards << select_card(deck)
    else
      prompt "Dealer stays"
      break
    end
  end
  dealer_hand
end

def show_cards(player_cards, dealer_cards)
  prompt "Dealer has: #{dealer_cards[0]} and unknown card"
  prompt "Player has: #{player_cards.join(', ')}"
end

def show_all_cards(player_cards, dealer_cards)
  prompt "Dealer has: #{dealer_cards.join(', ')}"
  prompt "Player has: #{player_cards.join(', ')}"
end

def win_or_bust?(name, result)
  if result == 21
    prompt "#{name} has Twenty one!!!"
  elsif result > 21
    prompt "#{name} Busted"
  else
    true
  end
end

def declare_winner(player, dealer)
  if (player > 21) || ((dealer > player) && (dealer < 21)) || (dealer == 21)
    prompt "Dealer wins!"
  elsif (dealer > 21) || (player > dealer) || (player == 21)
    prompt "Player wins!"
  elsif player == dealer
    prompt "No Winner!"
  end
end

loop do # main loop
  # initialize hand
  player_cards = []
  dealer_cards = []

  dealer_result = 0

  # deal cards to player and dealer
  deal_cards!(player_cards, dealer_cards, deck)

  # display cards


  # player takes turn
  player_result = player_turn(player_cards, dealer_cards, deck)
  if win_or_bust?('Player', player_result) == nil
    declare_winner(player_result, dealer_result)
    break
  else
    # dealer takes turn
    dealer_result = dealer_turn(player_cards, dealer_cards, deck)
    if win_or_bust?('Dealer', dealer_result) == nil
      declare_winner(player_result, dealer_result)
      break
    end
  end
  # winner declared
  prompt "***** Results *****"
  prompt "Player's Hand: #{hand_total(player_cards)}"
  prompt "Dealer's Hand: #{hand_total(dealer_cards)}"
  # declare_winner(player_result, dealer_result)
  prompt "Play again? (y or n)"
  break unless gets.chomp.downcase == 'y'
end # end of main loop
prompt "Thank you for playing!  Goodbye!"
