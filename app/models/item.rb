class Item < ApplicationRecord
  validates :JMENO, presence: true, length: { minimum: 2 }
  validates :PRIJMENI, presence: true, length: { minimum: 2 }
  validates :DAT_NAR, presence: true, length: { minimum: 6 }

  self.primary_key = "DAT_NAR"
end
