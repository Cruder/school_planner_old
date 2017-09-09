# frozen_string_literal: true

class Classroom < ActiveRecord::Base
  # Relations
  belongs_to :school, optional: true

  # Validations
  validates :name, presence: true
  validates :name, uniqueness: {
    scope: :school,
    message: ''
  }, unless: proc { |classroom| classroom.school_id.nil? }
end
