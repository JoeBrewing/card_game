class Deck
  # This class keeps track of the current deck.

  # This should probably be put in and read from a json file.
  # Array of cards that will be used for the deck.
  CARDS = [
    { '1♣' => 1 },
    { '1♦' => 1 },
    { '1♥' => 1 },
    { '1♠' => 1 },
    { '2♣' => 2 },
    { '2♦' => 2 },
    { '2♥' => 2 },
    { '2♠' => 2 },
    { '3♣' => 3 },
    { '3♦' => 3 },
    { '3♥' => 3 },
    { '3♠' => 3 },
    { '4♣' => 4 },
    { '4♦' => 4 },
    { '4♥' => 4 },
    { '4♠' => 4 },
    { '5♣' => 5 },
    { '5♦' => 5 },
    { '5♥' => 5 },
    { '5♠' => 5 },
    { '6♣' => 6 },
    { '6♦' => 6 },
    { '6♥' => 6 },
    { '6♠' => 6 },
    { '7♣' => 7 },
    { '7♦' => 7 },
    { '7♥' => 7 },
    { '7♠' => 7 },
    { '8♣' => 8 },
    { '8♦' => 8 },
    { '8♥' => 8 },
    { '8♠' => 8 },
    { '9♣' => 9 },
    { '9♦' => 9 },
    { '9♥' => 9 },
    { '9♠' => 9 },
    { '10♣' => 10 },
    { '10♦' => 10 },
    { '10♥' => 10 },
    { '10♠' => 10 },
    { 'J♣' => 10 },
    { 'J♦' => 10 },
    { 'J♥' => 10 },
    { 'J♠' => 10 },
    { 'Q♣' => 10 },
    { 'Q♦' => 10 },
    { 'Q♥' => 10 },
    { 'Q♠' => 10 },
    { 'K♣' => 10 },
    { 'K♦' => 10 },
    { 'K♥' => 10 },
    { 'K♠' => 10 },
    { 'A♣' => 11 },
    { 'A♦' => 11 },
    { 'A♥' => 11 },
    { 'A♠' => 11 },
  ]

  # This method initializes a new shuffled deck.
  def initialize
    @deck = CARDS.shuffle
  end

  # This method returns the current deck.
  def current_deck
    @deck
  end

  # This method draws a card from the deck.
  def draw
    # Pick a random card index from the deck.
    card_index = rand(@deck.length - 1)

    # Get the card.
    card = @deck[card_index]

    # Delete the card from the deck.
    @deck.delete_at(card_index)

    # Return the card.
    card
  end
end