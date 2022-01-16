require_relative('deck')
require_relative('player_queue')
require_relative('dealer')

class Game
  # This is the main game controller class. It holds all of the methods that are
  # needed to progress the game.

  # This is where we get our new deck, dealer, and get the next players.
  def initialize
    # Get a new deck.
    @deck = Deck.new()

    # Initialize the player queue.
    @queue = PlayerQueue.new()

    # Set up the card dealer.
    @dealer = Dealer.new('Dealer')

    # Get the game players.
    @players = @queue.get_players
  end

  # This is where the card game is controlled.
  def play
    # Deal the cards.
    @dealer.deal_cards(@players, @deck)

    # Show the hands and scores.
    show_hands_and_scores

    # Show who won.
    show_winners
  end

  # This shows what cards each player received and their hand score.
  def show_hands_and_scores
    # Show the cards and score of each player.
    @players.each do |player|
      puts player.hand_and_score
    end

    # Show the cards and score of the dealer.
    puts @dealer.hand_and_score
  end

  # This method shows all of the players that beat the dealer.
  def show_winners
    # Loop through each player.
    @players.each do |player|
      player.result(@dealer)
    end
  end
end