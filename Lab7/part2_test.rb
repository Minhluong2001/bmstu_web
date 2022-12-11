# frozen_string_literal: true

require_relative 'part2'

RSpec.describe Number_string do
  describe 'Solution solve' do
    number_string = Number_string.new(10, 'ka aigfb jbfuw')
    number = Number.new(10)
    it 'Give normal results' do
      expect(number_string.count_letter).to eq(12)
      expect(number.count_number).to eq(2)
    end

    it 'Check classes' do
      expect(number_string.class.superclass).to eq(Number)
    end
    it 'Check classes 2' do
      expect(number_string.is_a?(Number)).to be true
    end
    it 'Check classes 3' do
      expect(number_string.class < Number).to be true
    end
  end
end
