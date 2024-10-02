# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :projects

  validates :name, presence: true
  validates :code, presence: true, uniqueness: true
  validates :phone_number, presence: true
end
