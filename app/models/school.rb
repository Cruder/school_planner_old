# frozen_string_literal: true

class School < ActiveRecord::Base
  # Relations
  has_many :classrooms

  # Validations
  validates :name, presence: true, uniqueness: true
end
