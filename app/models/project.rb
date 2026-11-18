class Project < ApplicationRecord
  has_many :project_materials, dependent: :destroy
  has_many :materials, through: :project_materials

  CRAFT_TYPES  = %w[card origami flower garland gift_tag].freeze
  OCCASIONS    = %w[birthday holiday general].freeze
  SKILL_LEVELS = %w[beginner intermediate advanced].freeze

  validates :title,             presence: true
  validates :description,       presence: true
  validates :instructions,      presence: true
  validates :craft_type,        presence: true, inclusion: { in: CRAFT_TYPES }
  validates :occasion,          presence: true, inclusion: { in: OCCASIONS }
  validates :skill_level,       presence: true, inclusion: { in: SKILL_LEVELS }
  validates :estimated_minutes, presence: true, numericality: { greater_than: 0 }
end
