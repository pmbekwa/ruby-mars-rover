# frozen_string_literal: true

require 'spec_helper'

describe Operator do
  describe '#receive' do
    before :each do
      @rover = double('rover')
      @operator = Operator.new(@rover)
    end

    context 'given input L' do
      it 'turns the rover left' do
        expect(@rover).to receive(:turn_left).once
        @operator.receive 'L'
      end
    end

    context 'given input R' do
      it 'turns the rover right' do
        expect(@rover).to receive(:turn_right).once
        @operator.receive 'R'
      end
    end

    context 'given input M' do
      it 'moves the rover' do
        expect(@rover).to receive(:move).once
        @operator.receive 'M'
      end
    end

    context 'given input diferent of L, R or M' do
      it 'ignores the input and let the rover still' do
        expect(@rover).to_not receive(:move)
        expect(@rover).to_not receive(:turn_left)
        expect(@rover).to_not receive(:turn_right)
        @operator.receive 'XPTO'
      end
    end

    context 'given input LL' do
      it 'turns the rover left twice' do
        expect(@rover).to receive(:turn_left).twice
        @operator.receive 'LL'
      end
    end

    context 'given input LR' do
      it 'turns the rover left than right' do
        expect(@rover).to receive(:turn_left)
        expect(@rover).to receive(:turn_right)
        @operator.receive 'LR'
      end
    end

    context 'given input MM' do
      it 'moves the rover twice' do
        expect(@rover).to receive(:move).twice
        @operator.receive 'MM'
      end
    end

    context 'given input LRMMRL' do
      it 'turns left the rover, turns right the rover, move the rover twice, turns the rover right, turns the rover left' do
        expect(@rover).to receive(:turn_left)
        expect(@rover).to receive(:turn_right)
        expect(@rover).to receive(:move).twice
        expect(@rover).to receive(:turn_right)
        expect(@rover).to receive(:turn_left)
        @operator.receive 'LRMMRL'
      end
    end
  end
end
