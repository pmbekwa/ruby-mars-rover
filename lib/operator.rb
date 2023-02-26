# frozen_string_literal: true

require_relative './rover'
# The Operator class is responsible
# for the initialisation of the rover instances.
# This makes it possible for more than 1 rover
# to exist with its own navigation commands

# Service Operator iterate over any given instruction and send them to rover
class Operator
  def initialize(rover)
    @rover = rover
  end

  def receive(command_line)
    command_line.each_char do |command|
      case command
      when 'L'
        @rover.turn_left
      when 'R'
        @rover.turn_right
      when 'M'
        @rover.move
      end
    rescue
      puts "Error: Invalid direction specified '#{command}'. " \
        'Possible instructions: N, W, E, S'
      # if instruction is not valid. So do nothing
    end
  end
end
