# frozen_string_literal: true

class Material < ApplicationRecord
  belongs_to :material_category
  belongs_to :material_supplier
  has_many :project_materials

  validates :name, presence: true
  validates :dimensions_x, :dimensions_y, :dimensions_roll,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
