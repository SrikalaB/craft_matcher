class Material < ApplicationRecord
  has_many :project_materials, dependent: :destroy
  has_many :projects, through: :project_materials

  CATEGORIES = %w[paper tools adhesives embellishments].freeze

  validates :name,     presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :unit,     presence: true
end
