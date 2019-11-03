class Label < ApplicationRecord
  has_many :label_manifests
  has_many :articles, through: :label_manifests

  validates :measure, presence: true,
                      length: { minimum: 1 }
  validates :count, presence: true,
                    numericality: { only_integer: true,
                                    greater_than_or_equel_to: 1 }

  def add(plus)
    self.update(count: self.count + plus)
  end

  def substract(minus)
    self.update(count: self.count - minus)
  end
end
