# frozen_string_literal: true

class MaterialCategory < ApplicationRecord
  has_many :materials

  validates :name, presence: true, uniqueness: true
end
