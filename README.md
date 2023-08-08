# Rock, Paper, Scissors!

The program involves two players and two private inputs. The output refers to the winning player. 1u8 for player 1, 2u8 for player 2, and 0u8 if there is a tie. The inputs for the players are 1u8 for rock, 2u8 for paper, and 3u8 for scissors. GL;HF! 🚀

## Build Guide

To compile this Aleo program, run:
```bash
leo build
```

To execute this Aleo program, edit the `rockpaperscissors.in` inputs file with your desired choices. Then, run:
```bash
leo execute determine_winner
```

Alternatively, you can provide input via the command line:
```bash
leo execute determine_winner <input_1> <input_2>
```