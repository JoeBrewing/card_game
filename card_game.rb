require_relative('game')
require_relative('player_queue')
require 'timeout'

class CardGame
  # This is the class to runs the game and determines whether or not the player
  # wants to keep playing.
  def initialize
    # Initialize the player queue.
    @queue = PlayerQueue.new()

    # Initialize whether to ask if they want to start playing or keep playing.
    @action = 'start playing'
  end

  # This is our game loop.
  def play
    # Get the response.
    response = get_input

    # Check the response.
    if response == 'y'
      # Run game if they want to keep playing.
      run_game
    elsif response == 'n'
      # Leave the game if they don't want to keep playing.
      return
    else
      # Print that the command was unknown.
      puts 'Unknown response.'

      # Recursively call this method to ask again if they would like to keep
      # playing.
      play
    end
  end

  # This gets the player input of whether or not they want to continue. It
  # defaults to 'n' if the player times out.
  def get_input
    response = ''
    puts "Would you like to #{@action}?"
    
    begin
      Timeout::timeout 15 do
        response = gets.chomp
      end
    rescue Timeout::Error
      # Print that the client timed out.
      puts 'The client has timed out after 15 seconds of inactivity.'
      
      # Set the response to 'n' to indicate that the client no longer wants to
      # play.
      response = 'n'
    end

    response
  end

  def run_game
    # Set the action to play again since we are playing the first time.
    @action = 'play again'

    # Initialize a new game.
    game = Game.new(@queue)
    
    # Play the game.
    game.play

    # Call play to see if the player would like to play again.
    play
  end
end

# Initialize a new game.
card_game = CardGame.new

# Play the game.
card_game.play