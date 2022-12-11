# frozen_string_literal: true

require_relative 'part1'

RSpec.describe FirstClass do
  describe 'Solution solve' do
    it 'should be normal answer' do
      expect(described_class.create_file('today3 4jfisf s.js iwfu.sjf')).to eq(nil)
      expect(described_class.amount('text.txt')).to eq(['today3', '4jfisf', 'iwfu.sjf'])
    end

    it 'Random test' do
      gen = proc { "#{(1..rand(1000)).map { ('a'..'z').to_a[rand(26)] }.join}\n" }
      str = (1..rand(500)).map { gen.call }.join.chomp
      described_class.create_file(str)
      described_class.amount('text.txt')
    end
  end
end
