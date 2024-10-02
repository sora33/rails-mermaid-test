# frozen_string_literal: true

class Approval < ApplicationRecord
  belongs_to :project

  enum status: { pending: 'pending', approved: 'approved', rejected: 'rejected' }

  validates :status, presence: true
end
