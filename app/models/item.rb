class Item < ApplicationRecord
  validates :JMENO, presence: true, length: { minimum: 2 }
  validates :PRIJMENI, presence: true, length: { minimum: 2 }
  validates :ROD_CISLO, presence: true, length: { minimum: 6 }

  self.primary_key = "ROD_CISLO"
end
