MARS ROVER PROBLEM
======================

A squad of robotic rovers are to be landed by NASA on a plateau on Mars.

This plateau, which is curiously rectangular, must be navigated by the
rovers so that their on-board cameras can get a complete view of the
surrounding terrain to send back to Earth.

A rover’s position and location is represented by a combination of x and
y co-ordinates and a letter representing one of the four cardinal compass
points. The plateau is divided up into a grid to simplify navigation. An
example position might be 0, 0, N, which means the rover is in the bottom
left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The
possible letters are ‘L’, ‘R’ and ‘M’. ‘L’ and ‘R’ makes the rover spin
90 degrees left or right respectively, without moving from its current
spot.‘M’ means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

INPUT:
------

A rover’s position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. 
The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover , NASA sends a simple string of letters. The possible letters are ‘L’, ‘R’ and ‘M’. ‘L’ and ‘R’ makes the rover spin 90 degrees left or right respectively, without moving from its current spot. ‘M’ means move forward one grid point, and maintain the same heading.

OUTPUT
------

The output for each rover should be its final co-ordinates and heading.

TEST INPUTS
-----------
  
```
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM
6 5 E
LMLMLMLML

```

EXPECTED OUTPUTS
----------------
  
```
This is where the rover should be: 1 3 N
This is where the rover should be: 5 1 E
This is where the rover should be: 6 5 N

````

A `sample_input` file (with valid/ invalid) is included for
demonstration. For invalid inputs, a corresponding error message is displayed.  

To execute the ruby program, run the following command:  

`$ rake execute `

OR

If you have docker installed. Execute the program by runnning the fowllowing command:
`$ sh run.sh`

## Testing

To install the required gems, run `$ bundle install`  in the repo directory.

For executing the specs (unit testing), execute the following command:  

`$ bundle exec rspec --format documentation --color`
