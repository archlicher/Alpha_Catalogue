class Client < ApplicationRecord
  has_many :orders

  validates :name, presence: true,
                   length: { minimum: 1 }
  validates :accountable_person, presence: true,
                                 length: { minimum: 1 }
  validates :bulstat, presence: false,
                      length: { minimum: 1 }
  validates :address, presence: true,
                      length: { minimum: 1 }
end
