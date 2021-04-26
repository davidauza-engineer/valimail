# frozen_string_literal: true

class Prints99Bottles
  BOTTLES = 99

  def call
    initial_bottles = BOTTLES
    result = ''
    BOTTLES.times do
      result += "#{initial_bottles} bottles of beer on the wall, #{initial_bottles} bottles of beer.\n" if initial_bottles > 1
      result += "#{initial_bottles} bottle of beer on the wall, #{initial_bottles} bottle of beer.\n" if initial_bottles == 1
      initial_bottles -= 1
      result += "Take one down and pass it around, #{initial_bottles} bottles of beer on the wall.\n" if initial_bottles > 1
      result += "Take one down and pass it around, #{initial_bottles} bottle of beer on the wall.\n" if initial_bottles == 1
      result += "Take it down and pass it around, no more bottles of beer on the wall.\n" if initial_bottles == 0
    end
    result
  end
end
