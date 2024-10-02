# frozen_string_literal: true

class Project < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :factory
  has_one :estimate
  has_one :approval
  has_many :manufacturing_processes
  has_many :inspections
  has_many :project_materials

  enum status: { pending: 'pending', in_progress: 'in_progress', completed: 'completed' }

  validates :name, presence: true
  validates :status, presence: true
  validates :is_roll, inclusion: { in: [true, false] }
  validates :mark_dimensions_x, :mark_dimensions_y, :mark_dimensions_roll,
            :imposition_x, :imposition_y, :number_of_plates,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
