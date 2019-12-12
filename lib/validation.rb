# frozen_string_literal: true

class Validation
  attr_reader :selected_positions
  def initialize
    @valid_options = %w[1 2 3 4 5 6 7 8 9]
    @selected_positions = []
  end

  def check_valid_input(position)
    @valid_options.include?(position) && !@selected_positions.include?(position)
  end

  def update_selected_options(position)
    @selected_positions.push(position)
  end
end
