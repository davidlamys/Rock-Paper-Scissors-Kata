# Rock-Paper-Scissors-Kata
Kata for practicing OO style programming

The inspiration for this Kata comes from an example in the book
 [Object Design: Roles, Responsibilities, and Collaborations](https://www.amazon.co.uk/Object-Design-Responsibilities-Collaborations-Addison-Wesley/dp/0201379430) and the
  rules in the [Object Calisthenics](https://www.cs.helsinki.fi/u/luontola/tdd-2009/ext/ObjectCalisthenics.pdf) paper by Jeff Bay.


## Description

>The game has only three possible outcomes other than a tie: a player who decides to play rock will beat another player who has chosen scissors ("rock crushes scissors") but will lose to one who has played paper ("paper covers rock"); a play of paper will lose to a play of scissors ("scissors cut paper"). If both players throw the same shape, the game is tied and is usually immediately replayed to break the tie.
> --<cite>[Wikipedia](https://en.wikipedia.org/wiki/Rock-paper-scissors)</cite>

## Kata Rules

### Stage 1
Write code to determine whether one shape object beats another.
e.g. aPaper.beats(aRock)

Do this for all combinations

> rock crushes scissors

> paper covers rock

> scissors cut paper

### Stage 2
Refactor your code to adhere to these rules:
* One level of indentation per method
* One dot per line
* Don’t use if, else or case statements

### Stage 3
Add Spock and Lizard to the equation:

> Spock smashes scissors and vaporizes rock

> Spock is poisoned by lizard and disproven by paper

> Lizard poisons Spock and eats paper

> Lizard is crushed by rock and decapitated by scissors

### Stage 4
Create a Game object that will simulate 2 players throwing shapes until
one player wins the best of 7.

Each round must be printed showing the shapes thrown by both players, the
result of the round and a running total of the scores.


## User Stories:

http://agilekatas.co.uk/katas/RockPaperScissors-Kata
### Rock Beats Scissors
As a player
I want rock to beat scissors
So that I can play with rules I'm familiar with

    >   Given I have chosen rock
        When the opponent chooses scissors
        Then I should win
        
    >   Given I have chosen scissors
        When the opponent chooses rock
        Then they should win

### Scissors Beats Paper
As a player
I want scissors to beat paper
So that I can play with rules I'm familiar with

    >   Given I have chosen scissors
        When the opponent chooses paper
        Then I should win
        
    >   Given I have chosen paper
        When the opponent chooses scissors
        Then they should win
        
### Paper Beats Rock
As a player
I want paper to beat rock
So that I can play with rules I'm familiar with
        
        >  Given I have chosen paper
        When the opponent chooses rock
        Then I should win
        
        >   Given I have chosen rock
        When the opponent chooses paper
        Then they should win        
        
### Same Moves Result in Draw
As a player
I want the same moves to draw
So that I can play with rules I'm familiar with

    >   Given I have chosen rock
        When the opponent chooses rock
        Then it should be a draw
        
    >   Given I have chosen scissors
        When the opponent chooses scissors
        Then it should be a draw
        
    >   Given I have chosen paper
        When the opponent chooses paper
        Then it should be a draw

