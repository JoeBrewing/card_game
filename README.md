# card_game
Simple Ruby command line card game.

# How To Play
ruby card_game.rb \
press 'y' and then enter to start playing/keep playing when prompted \
press 'n' and then enter to stop playing when prompted \
pressing anything else and enter will exit the game \
the game will timeout if the client does not respond for 15 seconds \

# How The Game Works
The game initializes a queue of players. Every round a deck is dealt, 5 players are picked off the top of the queue, the hands are dealt in round robin, the hands are shown, and it shows whether or not each player beat the dealer.
