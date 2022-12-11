# frozen_string_literal: true

require_relative 'part3'

RSpec.describe ThirdClass do
  describe 'Solution solve' do
    it 'should be normal answer' do
      expect(ThirdClass.new.work('ab the d', 12)).to eq('ab   the   d')
      expect(ThirdClass.new.work('abf jf daf', 20)).to eq('abf      jf      daf')
    end
    it 'string not change' do
      expect(ThirdClass.new.work('to day is a good day', 20)).to eq('to day is a good day')
    end
    it 'should be normal answer with random strings' do
      word = proc { (1..6).map { ('a'..'z').to_a[rand(26)] }.join }
      str = (1..3).map { word.call }.join(' ')
      expect(ThirdClass.new.work(str, 30)).to eq(str.split.join(' ' * ((30 - str.size) / 2 + 1)))
    end
  end
end
