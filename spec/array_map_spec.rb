require 'spec_helper'
require './array.rb'

RSpec.describe 'Array' do

  before :each do
    @array = [1, 2, 3, 4]
  end
  context 'mapping' do
    it " should return an @array" do
      expect @array.my_map{ |a| a * a } == [1, 2, 4, 9]
    end

    it " should return an @array" do
      result = @array.my_map do |x|
        x + 1
      end
      expect result == [2, 3, 4, 5]
    end

    it " should return an @array" do
      expect @array.my_map(&:to_s) == ["1", "2", "3", "4"]
    end

  end
end