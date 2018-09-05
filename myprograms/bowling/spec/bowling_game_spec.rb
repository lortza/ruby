# require 'rspec/autorun'
require 'pry'
require_relative '../bowling_game'
# require './bowling_original_from_procore'


describe 'BowlingGame' do
  it 'handles simple scores' do
    expect(
      BowlingGame.new(
        ['4', '3'], ['2', '1'], ['2', '3'], ['7', '1'], ['3', '6'], ['2', '2'], ['8', '1'], ['6', '3'], ['2', '3'], ['1', '1']
        ).calculate_score
      ).to eq 61
  end

  it 'handles zeroes' do
    expect(
      BowlingGame.new(
        ['4', '3'], ['-', '1'], ['2', '-'], ['7', '1'], ['-', '6'], ['2', '-'], ['8', '-'], ['6', '-'], ['-', '-'], ['-', '-']
        ).calculate_score
      ).to eq 40
  end

  it 'handles spares' do
    expect(
      BowlingGame.new(
        ['4', '3'], ['9', '/'], ['2', '-'], ['7', '/'], ['-', '6'], ['2', '/'], ['8', '-'], ['6', '-'], ['-', '-'], ['-', '-']
        ).calculate_score
      ).to eq 69
  end

  it 'handles strikes' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['2', '6'], ['X', '-'], ['7', '2'], ['X', '-'], ['-', '3'], ['X', '-'], ['-', '-'], ['3', '2'], ['1', '1']
        ).calculate_score
      ).to eq 87
  end

  it 'handles spares followed by a strike' do
    expect(
      BowlingGame.new(
        ['4', '3'], ['2', '6'], ['6', '/'], ['X', '-'], ['3', '3'], ['7', '/'], ['2', '1'], ['7', '/'], ['X', '-'], ['3', '2']
        ).calculate_score
      ).to eq 112
  end

  it 'handles strikes followed by a spare' do
    # current score + 10 for strike, plus 10 for the spare, plus the value of one more frame past the spare
    expect(
      BowlingGame.new(
        ['4', '3'], ['2', '6'], ['X', '-'], ['3', '/'], ['3', '3'], ['X', '-'], ['2', '/'], ['7', '/'], ['3', '6'], ['3', '2']
      ).calculate_score
    ).to eq 118
  end

  xit 'handles consecutive strikes' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['X', '-'], ['6', '3'], ['X', '-'], ['X', '-'], ['7', '/'], ['2', '1'], ['7', '2'], ['2', '3'], ['3', '2']
      ).calculate_score
    ).to eq 135
  end

  xit 'handles a spare in the last frame' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['X', '-'], ['6', '3'], ['X', '-'], ['X', '-'], ['7', '/'], ['2', '1'], ['7', '2'], ['2', '3'], ['3', '/', '6']
      ).calculate_score
    ).to eq 146
  end

  xit 'handles a strike in the last frame' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['X', '-'], ['6', '3'], ['X', '-'], ['X', '-'], ['7', '/'], ['2', '1'], ['7', '2'], ['2', '3'], ['X', '7', '2']
      ).calculate_score
    ).to eq 149
  end

  xit 'handles a strike followed by a spare in the last frame' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['X', '-'], ['6', '3'], ['X', '-'], ['X', '-'], ['7', '/'], ['2', '1'], ['7', '2'], ['2', '3'], ['X', '7', '/']
      ).calculate_score
    ).to eq 150
  end

  xit 'handles a perfect game' do
    expect(
      BowlingGame.new(
        ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', '-'], ['X', 'X', 'X']
      ).calculate_score
    ).to eq 300
  end
end
