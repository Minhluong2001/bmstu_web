# frozen_string_literal: true

require_relative 'part2'

RSpec.describe SecondClass do
  describe 'Solution solve' do
    it 'Give normal answer with accuracy 1e-3' do
      expect(SecondClass.new.find { |num| (num - 1.618033989).abs <= 1e-3 }).to eq(1.6176470588235294)
    end

    it 'Give normal answer with accuracy 1e-4' do
      expect(SecondClass.new.find { |num| (num - 1.618033989).abs <= 1e-4 }).to eq(1.6179775280898876)
    end
  end
end
