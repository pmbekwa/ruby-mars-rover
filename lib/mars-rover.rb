# frozen_string_literal: true

require_relative './rover'
require_relative './operator'

grid = ARGF.gets

# utility to accept Arguments and launches our mars rover.
until ARGF.eof
  rover_position = ARGF.gets
  position = rover_position.split[0, 2]
  direction = Directions.from_s(rover_position.split[2])
  
  #instance of our rovers with direction x, y, direction facing N, E, S, or W
  rover = Rover.new(direction, position)
  
  #call the instruction for each instance of the object rover
  Operator.new(rover).receive ARGF.gets

  puts rover.to_s
end
puts '=========='
