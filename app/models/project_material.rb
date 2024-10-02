# frozen_string_literal: true

class ProjectMaterial < ApplicationRecord
  belongs_to :project
  belongs_to :material

  validates :number_of_sheet_x, :number_of_sheet_y, :dimensions_x, :dimensions_y,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :quantity, numericality: { greater_than: 0 }
end
