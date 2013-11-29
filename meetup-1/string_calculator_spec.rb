require 'minitest/autorun'
require 'turn/autorun'

require_relative 'string_calculator'

describe 'StringCalculator' do

  subject do
    StringCalculator
  end

  it 'should return 0 for an empty string' do
    subject.add("").must_equal 0
  end

  it 'should sum up one number' do
    subject.add("1").must_equal 1
  end

  it 'should sum up 1 and 2' do
    subject.add("1,2").must_equal 3
  end

  it 'should sum up 232108413 and 647375205' do
    subject.add("232108413,647375205").must_equal 879483618
  end

  # http://xkcd.com/221/
  it 'should sum up 4 and 4' do
    rand = 4
    subject.add("#{rand},#{rand}").must_equal rand*2
  end

  it 'should perform + on the string "10,20"' do
    subject.add("10,20").must_equal 30
  end
end
