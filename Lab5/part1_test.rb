# frozen_string_literal: true

require_relative 'part1'

RSpec.describe FirstClass do
  describe 'Solution solve' do
    it 'Find answer with number' do
      expect(described_class.new.part1('2', '3')).to eq(1.079689332685132)
    end

    it 'Find answer with float' do
      expect(described_class.new.part1('8.5', '4.6')).to eq(0.45733386986668356)
    end

    it 'Getting a bad answer' do
      expect(described_class.new.part1('12.', '10')).to eq('Bad input, exit...')
      expect(described_class.new.part1('abc', '5')).to eq('Bad input, exit...')
    end

    it 'Give zero' do
      expect(described_class.new.part1('0', '0')).to eq(0)
    end

    # it "Does not exist" do
    #   expect(describe_class.new.part1("5", "10")).to eq(NaN)
    # end
  end
end
