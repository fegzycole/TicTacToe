# frozen_string_literal: true

require './lib/board'
require './lib/validation'

describe Board do
  let(:tictactoe) { Board.new }

  describe '#update_board' do
    it 'updates the position 1 with an X' do
      tictactoe.update_board('X', 1)
      expect(tictactoe.board[0]).to eql('X')
    end
  end

  describe '#full?' do
    it 'returns true if the board is full' do
      tictactoe.update_board('X', 1)
      tictactoe.update_board('O', 2)
      tictactoe.update_board('X', 3)
      tictactoe.update_board('O', 4)
      tictactoe.update_board('X', 5)
      tictactoe.update_board('O', 6)
      tictactoe.update_board('X', 7)
      tictactoe.update_board('O', 8)
      tictactoe.update_board('X', 9)
      expect(tictactoe.full?).to eql(true)
    end

    it 'returns false if the board is empty' do
      expect(tictactoe.full?).to eql(false)
    end
  end

  describe '#player_won' do
    it 'returns true if a player has matched three in a row' do
      tictactoe.update_board('X', 1)
      tictactoe.update_board('X', 2)
      tictactoe.update_board('X', 3)
      expect(tictactoe.player_won?).to eql(true)
    end

    it 'returns true if a player has matched three in a row' do
      tictactoe.update_board('X', 4)
      tictactoe.update_board('X', 5)
      tictactoe.update_board('X', 6)
      expect(tictactoe.player_won?).to eql(true)
    end

    it 'returns true if a player has matched three in a row' do
      tictactoe.update_board('X', 7)
      tictactoe.update_board('X', 8)
      tictactoe.update_board('X', 9)
      expect(tictactoe.player_won?).to eql(true)
    end

    it 'returns true if a player has matched three in a column' do
      tictactoe.update_board('X', 1)
      tictactoe.update_board('X', 4)
      tictactoe.update_board('X', 7)
      expect(tictactoe.player_won?).to eql(true)
    end

    it 'returns true if a player has matched three in a column' do
      tictactoe.update_board('X', 2)
      tictactoe.update_board('X', 5)
      tictactoe.update_board('X', 8)
      expect(tictactoe.player_won?).to eql(true)
    end

    it 'returns true if a player has matched three in a column' do
      tictactoe.update_board('X', 3)
      tictactoe.update_board('X', 6)
      tictactoe.update_board('X', 9)
      expect(tictactoe.player_won?).to eql(true)
    end

    it 'returns true if a player has matched three in a diagonal' do
      tictactoe.update_board('X', 1)
      tictactoe.update_board('X', 5)
      tictactoe.update_board('X', 9)
      expect(tictactoe.player_won?).to eql(true)
    end

    it 'returns true if a player has matched three in a diagonal' do
      tictactoe.update_board('X', 3)
      tictactoe.update_board('X', 5)
      tictactoe.update_board('X', 7)
      expect(tictactoe.player_won?).to eql(true)
    end

    it 'returns false if the game ends in a draw' do
      tictactoe.update_board('X', 1)
      tictactoe.update_board('O', 2)
      tictactoe.update_board('X', 3)
      tictactoe.update_board('O', 4)
      tictactoe.update_board('X', 5)
      tictactoe.update_board('X', 6)
      tictactoe.update_board('O', 7)
      tictactoe.update_board('X', 8)
      tictactoe.update_board('O', 9)
      expect(tictactoe.player_won?).to eql(false)
    end
  end
end
