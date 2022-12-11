# frozen_string_literal: true

require_relative 'part2'

RSpec.describe SecondClass do
  describe 'Solution solve' do
    it 'should be normal answer' do
      expect(described_class.part2(%w[1 5 9 9])).to eq(2)
      expect(described_class.part2(%w[3 7 7 7 9])).to eq(3)
    end

    it 'Getting a bad answer' do
      expect(described_class.part2([''])).to eq(1)
    end
  end
end
