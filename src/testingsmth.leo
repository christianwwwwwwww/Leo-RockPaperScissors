program rockpaperscissors.aleo {

    // Represents a move in Rock, Paper, Scissors
    // A valid move is either 1, 2, or 3 where:
    // 1 corresponds to Rock,
    // 2 corresponds to Paper,
    // 3 corresponds to Scissors
    struct Move {
        choice: u8
    }

    // Determines the winner of a match.
    // - `player1` : The move of player 1.
    // - `player2` : The move of player 2.
    // Returns a `u8` corresponding to the player who won the match, or 0 if it's a tie.
    transition determine_winner(player1: Move, player2: Move) -> u8 {
        // If both players make the same move
        if player1.choice == player2.choice {
            return 0u8;
        }

        // If player 1 chooses Rock
        if player1.choice == 1u8 {
            if player2.choice == 3u8 {
                return 1u8;
            } else {
                return 2u8;
            }
        }
        
        // If player 1 chooses Paper
        if player1.choice == 2u8 {
            if player2.choice == 1u8 {
                return 1u8;
            } else {
                return 2u8;
            }
        }
        
        // If player 1 chooses Scissors
        if player1.choice == 3u8 {
            if player2.choice == 2u8 {
                return 1u8;
            } else {
                return 2u8;
            }
        }

        // Fallback case (should not be reached)
        return 0u8;
    }
}
