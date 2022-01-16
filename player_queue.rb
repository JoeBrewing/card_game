class PlayerQueue
  # This is a class to keep track of all of the players in the player queue.

  # This initializes our player queue.
  def initialize
    @queue = Queue.new
    @queue.push(Player.new('Timmy'))
    @queue.push(Player.new('Jimmy'))
    @queue.push(Player.new('Bob'))
    @queue.push(Player.new('Stephen'))
    @queue.push(Player.new('Robert'))
    @queue.push(Player.new('Cyle'))
    @queue.push(Player.new('Timmy'))
    @queue.push(Player.new('Eugene'))
    @queue.push(Player.new('Horatio'))
    @queue.push(Player.new('Jorge'))
    @queue.push(Player.new('Leonardo'))
    @queue.push(Player.new('Eduardo'))
    @queue.push(Player.new('Rick Astley'))
  end

  # Get the 5 players.
  def get_players
    # Get the 5 players.
    player_1 = get_player
    player_2 = get_player
    player_3 = get_player
    player_4 = get_player
    player_5 = get_player

    # Return the players as an array.
    [player_1, player_2, player_3, player_4, player_5]
  end

  # This pops a player from the top of the queue and then adds it back to the
  # bottom.
  def get_player
    # Pop the player off the top of the queue.
    player = @queue.pop

    # Push the player back on the bottom of the queue.
    @queue.push(player)

    # Return the player.
    player
  end
end