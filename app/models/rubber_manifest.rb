class RubberManifest < ApplicationRecord
  belongs_to :article
  belongs_to :rubber

  validates_numericality_of :count, presence: true,
                                    greater_than_or_equal_to: 0
end
