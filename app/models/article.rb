class Article < ApplicationRecord
  has_many :fabric_manifests
  has_many :fabrics, through: :fabric_manifests
  has_many :button_manifests
  has_many :buttons, through: :button_manifests
  has_many :label_manifests
  has_many :labels, through: :label_manifests
  has_many :rubber_manifests
  has_many :rubbers, through: :rubber_manifests
  has_many :threading_manifests
  has_many :threadings, through: :threading_manifests
  has_many :zipper_manifests
  has_many :zippers, through: :zipper_manifests

  validates :title, presence: true,
                    length: { minimum: 1 }
  validates :description, presence: false, allow_blank: true
end
