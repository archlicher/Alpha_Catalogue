class Threading < ApplicationRecord
  has_many :threading_manifests
  has_many :articles, through: :threading_manifests

  validates :color, presence: true,
                    length: { minimum: 1 }
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
