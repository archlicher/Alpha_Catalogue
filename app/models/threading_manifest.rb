class ThreadingManifest < ApplicationRecord
  belongs_to :article
  belongs_to :threading

  validates_numericality_of :count, presence: true,
                                    greater_than: 0
end
