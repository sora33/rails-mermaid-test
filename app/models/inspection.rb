# frozen_string_literal: true

class Inspection < ApplicationRecord
  belongs_to :project
  belongs_to :user

  enum inspection_type: { visual: 'visual', measurement: 'measurement', quality: 'quality' }

  validates :inspection_type, presence: true
end
