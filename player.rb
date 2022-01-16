class Player
  # This is the main player class. It holds all of the main player methods.

  # This method initializes the player hand and name.
  def initialize(player_name)
    # Initialize the player name.
    @name = player_name
    
    # Initialize the hand as an empty array.
    @hand = []
  end

  # This returns the player name.
  def name
    @name
  end

  # This is where the player receives a card from the dealer.
  def receive_card(card)
    @hand << card
  end

  # This method calculates the score of the current hand.
  def hand_score
    @hand[0].values[0] + @hand[1].values[0]
  end

  # This method shows the cards that are currently drawn.
  def drawn_cards
    "#{@hand[0].keys[0]} #{@hand[1].keys[0]}"
  end

  # This shows the player cards and their hand score.
  def hand_and_score
    "#{name} received (#{drawn_cards}) with a hand score of: #{hand_score}"
  end

  # This shows whether or not the player beat the dealer.
  def result(dealer)
    # Get whether or not the player beat the dealer.
    action = hand_score > dealer.hand_score ? 'beat the dealer.' : 'lost to the dealer.'

    # Print out whether or not the player beat the dealer.
    puts "#{name} #{action}"
  end
end