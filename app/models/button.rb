class Button < ApplicationRecord
  has_many :button_manifests
  has_many :articles, through: :button_manifests

  validates :type_of_button, presence: true,
                             length: { minimum: 1 }
  validates :size, presence: true,
                   numericality: { only_integer: true,
                                   greater_than_or_equal_to: 1 }
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
