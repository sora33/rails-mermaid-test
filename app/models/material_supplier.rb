# frozen_string_literal: true

class MaterialSupplier < ApplicationRecord
  has_many :materials

  validates :name, presence: true, uniqueness: true
end
