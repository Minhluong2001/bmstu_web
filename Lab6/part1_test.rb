# frozen_string_literal: true

require_relative 'part1'

RSpec.describe FirstClass do
  describe 'Solution solve' do
    it 'Give normal answer with accuracy 1e-3' do
      expect(FirstClass.new.work(1e-3)).to eq(1.6176470588235294)
    end

    it 'Give normal answer with accuracy 1e-4' do
      expect(FirstClass.new.work(1e-4)).to eq(1.6179775280898876)
    end
  end
end
