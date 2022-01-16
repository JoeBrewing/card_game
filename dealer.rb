require_relative('player')

class Dealer < Player
  # This keeps track of all of the information related to the card dealer.

  def initialize(player_name)
    super
  end

  def deal_cards(players, deck)
    # Do 2 iterations of this loop to give each player 2 cards.
    (0..1).to_a.each do |round|
      # Draw a card from the deck for the dealer.
      receive_card(deck.draw)

      # Draw a card from the deck for each player.
      players.each do |player|
        player.receive_card(deck.draw)
      end
    end
  end
end