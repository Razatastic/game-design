import java.util.Random;

int ties=0;
Player one = new Player("Ahmad");
Player two = new Player("Gerard");
Player.CustomDie playerOneDie = one.new CustomDie(0, 3, 3, 5, 5, 5);
Player.CustomDie playerTwoDie = two.new CustomDie(0, 2, 2, 5, 5, 7);

void setup() {
  //scoreCondition(one, two, 10);  //Outputs first player to get to 10 wins
  //rollSimulation(one, two, 10);  //Simulation of 10 rolls
  //rollSimulation(one, two, 1000); //Simulation of 1,000 rolls
}

void draw() {
}

void scoreCondition(Player player1, Player player2, int score) {  //Outputs first player that reaches given score
  while (player1.wins != score && player2.wins !=score)
  {
    playerOneDie.dieRoll();
    playerTwoDie.dieRoll();
    if (playerOneDie.dieSide == playerTwoDie.dieSide) {
      ties++;
    } else if (playerOneDie.dieSide > playerTwoDie.dieSide) {
      one.wins++;
      two.losses++;
    } else {
      one.losses++;
      two.wins++;
    }
  }
  printResults(one, two);
}

void rollSimulation(Player one, Player two, int numRolls) {  //Simulates dice rolls given the specified number of rolls
  for (int i = 0; i < numRolls; i++)
  {
    playerOneDie.dieRoll();
    playerTwoDie.dieRoll();
    if (playerOneDie.dieSide == playerTwoDie.dieSide) {
      ties++;
    } else if (playerOneDie.dieSide > playerTwoDie.dieSide)
    {
      one.wins++;
      two.losses++;
    } else {
      one.losses++;
      two.wins++;
    }
  }
  printResults(one, two);
}

void printResults(Player one, Player two) {  //Outputs total number of wins, losses, ties
  System.out.println("Wins: " + "\n=> " + one.playerName + ": " + one.wins + "\n=> " + two.playerName + ": " + two.wins); 
  System.out.println("Losses: " + "\n=> " + one.playerName + ": " + one.losses + "\n=> " + two.playerName + ": " + two.losses); 
  System.out.println("Ties: " + ties);
}

class Player {  //Player class
  int wins, losses;
  String playerName;
  Player(String name) {
    playerName = name;
  }

  class CustomDie {  //Die class
    int side1, side2, side3, side4, side5, side6; //Six sides of die
    int[] side = new int[6]; //Array that contains each side
    int dieSide; //The side that was rolled

    CustomDie(int a, int b, int c, int d, int e, int f) {
      side[0] = a; 
      side[1] = b; 
      side[2] = c; 
      side[3] = d; 
      side[4] = e; 
      side[5] = f;
    }

    void dieRoll() {  //Die roll simulator
      dieSide = side[(int)random(0, 5)];
    }
  }
}
