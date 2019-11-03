class Rubber < ApplicationRecord
  has_many :rubber_manifests
  has_many :articles, through: :rubber_manifests

  validates :color, presence: true,
                    length: { minimum: 1 }
  validates :width, presence: true,
                    numericality: { greater_than: 0 }
  validates :count, presence: true,
                    numericality: { only_integer: true,
                                    greater_than_or_equal_to: 1 }

  def add(plus)
    self.update(count: self.count + plus)
  end

  def substract(minus)
    self.update(count: self.count - minus)
  end
end
