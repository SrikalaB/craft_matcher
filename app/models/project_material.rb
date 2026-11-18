class ProjectMaterial < ApplicationRecord
  belongs_to :project
  belongs_to :material

  validates :quantity_needed, presence: true, numericality: { greater_than: 0 }
end
