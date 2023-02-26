# frozen_string_literal: true

# This module defines the classes that will encapsulate direction
# of movement for the rover
module Directions
  def self.from_s(direction)
    case direction
    when 'N'
      NORTH
    when 'E'
      EAST
    when 'W'
      WEST
    when 'S'
      SOUTH
    end
  end

  # Define North and all possible movements
  class North
    def turn_left
      WEST
    end

    def turn_right
      EAST
    end
    
    def move(current_position)
      x = Integer(current_position[0])
      y = Integer(current_position[1]) + 1

      [x, y]
    end

    def to_s
      'N'
    end
  end

  # Define West and all possible movements
  class West
    def turn_left
      SOUTH
    end

    def turn_right
      NORTH
    end
  
    def move(current_position)
      x = Integer(current_position[0]) - 1
      y = Integer(current_position[1])

      [x, y]
    end

    def to_s
      'W'
    end
  end

  # Define South and all possible movements
  class South
    def turn_left
      EAST
    end

    def turn_right
      WEST
    end

    def move(current_position)
      x = Integer(current_position[0])
      y = Integer(current_position[1]) - 1

      [x, y]
    end

    def to_s
      'S'
    end
  end

  # Define East and all possible movements
  class East
    def turn_left
      NORTH
    end

    def turn_right
      SOUTH
    end

    def move(current_position)
      x = Integer(current_position[0]) + 1
      y = Integer(current_position[1])

      [x, y]
    end

    def to_s
      'E'
    end
  end

  NORTH = North.new
  SOUTH = South.new
  EAST  = East.new
  WEST  = West.new
end
