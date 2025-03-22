# Quantum Wars

Quantum Wars is a game based on the rules of error propagation in Clifford quantum circuits.
X/Z errors are represented by quantum soldiers and the board is a quantum circuit represented by a quantum terrain that the soldiers have to traverse. Quantum operations (H, CX, M...) modify the errors (soldiers) as the move through the circuit (terrain).

In the game, two players are trying to defeat each other by creating the largest possible army of quantum soldiers.
Soldiers start on one side of the board and, to reach the enemy's lines, they have to traverse a quantum terrain that can either multiply them (CX), modify their behavior (H), or kill them (M).
The terrain is sequentially built (quantum operations are added) by the players themselves.
To win, each player tries to build a terrain that multiplies its soldiers and reduces the opposing forces.
(The quantum terrain is the same for both players, but they have to traverse it in opposite directions.)


## MVPs

- **MVP 1:** Includes a fixed board with 5x5 vacancies, a minimal set of gates (CX, H, M), errors that can propagate through the circuit, an engine that can evolve the starting layer of errors till the other side, a point system that counts points after propagation, and an engine that allows to play a full game with a simple choice of rules (e.g. 1-1 order, accumulated points, no dynamic circuits, fixed initial positions) on a single machine.

- **MVP 2:**


## Functional Specification

The game should contain the following:

- **Board:** *n* qubit lines and *m* positions to place gates per line.

- **Menu:** containing gates that one can pick, and drag-and-drop or click to place them on the circuit.

- **Errors:** of two types: *X* and *Z*. If both errors are on the same position then the representation has to adapt for it.

- **Gates:** A set of gates that can be added to the circuit and perform predefined transformations on the errors when they go through. A basic set of gates is CX (which multiplies X and Z errors depending on whether they hit control or target), H (which changes X to Z and Z to X), and M (which destroys errors).

- **Evolution engine:** A function that that allows to propagate the given errors through the circuit until the end. Ideally there should be a button to do that.

- **Point counter:** Detects when errors have arrived at the last layer and adds points accordingly.

- **Game rules engine:** A function that allows to play a whole game according to some predefined rules, and ends when one player has won.

- **Multiplayer mode:** The game should be playable by players in two different computers, or on the same computer by flipping the board in each round.


## Ideas to test

- **1 player:** (1) Puzzle version *Mate in X* where a given circuit and error distribution (both sides) is given and the aim is to add a X gates that allow to win the game. (2) Puzzle version *Pattern* where we start with a distribution of errors and the aim is to add gates to generate a target distribution of errors.

- **2 player:** The aim is to bring the largest number of errors to the other side of the circuit. Gates are sequentially added by the two players.

- **Order:** Players could add gates following a 1-1 or a 1-2-1 pattern.

- **Point collections:** Soldiers could traverse the circuit either once at the end or every 4 turns (for example).

- **Board size:** Either fixed (e.g. 5x5) or dynamic (grows after some turns).

- **Initial errors:** Either fixed, or up to the players to choose, or dependent on previous round.

- **Symmetry breaking:** In order to break the symmetry (and avoid symmetric play being always the best strategy), we could allow players to choose the set of gates the want to use, or start with an asymmetric board (e.g. with some gates in it already or some vacancies filled).

- **One-by-one steps:** To simplify calculation (and for alternative game dynamics), the players could be allowed to move the errors in small steps, instead of all at once. I

- **Measurements:** Since they are overpowered, they should be restricted to 1 or 2 maximum per player. We could also consider the possibility of measurements disappearing after they kill the first soldier. Also, measurements could replace quantum operations that are already there, thus leading to a more dynamic circuit.

- **Dynamic circuit:** The circuit could be built just once, or we could allow the circuit to dynamically change. When the circuit is full, the players are allowed to remove 1/2 operations before placing a new one.

- **End of game:** The game could end when the circuit is finished, or after achieving a certain number of points.

- **Gates:** The minimum set consists of CX, H, M. Other ideas involve the ID gate (does nothing, just occupies space), the T gate (creates a superposition line that allows up to 4 errors to coexist), the CZ, S, and SWAP gates (which work like in quantum).


## Simulations

- Compute the optimal strategy and check that it is not trivial (e.g. symmetric positioning)

## Game Rules

### Game version 1

...

### Game version 2

...

