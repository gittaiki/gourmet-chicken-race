class Race < ApplicationRecord
  has_many :menus, dependent: :destroy

  with_options presence: true do
    validates :set_price
    validates :gap_price
  end
end
