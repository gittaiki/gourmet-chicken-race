class Race < ApplicationRecord
  with_options presence: true do
    validates :set_price
    validates :gap_price
  end
end
