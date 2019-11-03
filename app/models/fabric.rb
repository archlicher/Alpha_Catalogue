class Fabric < ApplicationRecord
  has_many :fabric_manifests
  has_many :articles, through: :fabric_manifests

  validates :fabric, presence: true,
                     length: { minimum: 1 }
  validates :composition, presence: true,
                          length: { minimum: 3, maximum: 30 }
  validates :weigth, presence: true,
                     numericality: { greater_than: 0 }
  validates :color, presence: true,
                    length: { minimum: 1 }
  validates :measure, presence: true,
                      inclusion: { in: %w(kg meter) }
  validates_numericality_of :price, presence: true,
                                    greater_than: 0,
                                    less_than_or_equal_to: BigDecimal(10**8)
  validates_numericality_of :count, presence: true,
                                    greater_than: 0

  def add(plus, price)
    self.update(count: self.count + plus, price: price)
  end

  def substract(minus, price)
    self.update(count: self.count - minus, price: price)
  end
end
