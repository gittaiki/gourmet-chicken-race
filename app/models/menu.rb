class Menu < ApplicationRecord
  belongs_to :race

  validates :choice, inclusion: { in: [true, false] }
end
