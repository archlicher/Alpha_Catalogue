class Button < ApplicationRecord
  validates :type_of_button, presence: true,
                             length: { minimum: 1 }
  validates :size, presence: true
  validates :count, presence: true

  def add(plus)
    self.update(count: self.count + plus)
  end

  def substract(minus)
    self.update(count: self.count - minus)
  end
end
