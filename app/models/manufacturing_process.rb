# frozen_string_literal: true

class ManufacturingProcess < ApplicationRecord
  belongs_to :project

  enum process_category: { cutting: 'cutting', printing: 'printing', finishing: 'finishing' }

  validates :process_category, presence: true
end
