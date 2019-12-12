require './lib/validation'

describe Validation do
  let(:validation) { Validation.new }

  describe '#check_valid_input' do
    it 'should return true if we enter a valid position' do
      expect(validation.check_valid_input('2')).to eql(true)
    end

    it 'should return false if we enter an invalid position' do
      expect(validation.check_valid_input('79')).to eql(false)
    end

    it 'should return false if we enter an alphabet' do
      expect(validation.check_valid_input('S')).to eql(false)
    end

    it 'should return false if we enter an integer' do
      expect(validation.check_valid_input(4)).to eql(false)
    end

    it 'should return false if we enter a position that has been selected' do
      validation.update_selected_options('2')
      expect(validation.check_valid_input('2')).to eql(false)
    end
  end

  describe '#update_selected_options' do
    it 'should update the array containing the selected options when a user picks a position' do
      validation.update_selected_options('2')
      expect(validation.selected_positions[0]).to eql('2')
    end
  end
end
