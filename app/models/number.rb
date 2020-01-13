class Number < ApplicationRecord
  START_RANGE = 1111111111
  END_RANGE = 9999999999

  def self.not_in_range number
    !(START_RANGE..END_RANGE).include?(number)
  end
end
