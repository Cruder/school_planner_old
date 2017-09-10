# frozen_string_literal: true

class Classroom < ActiveRecord::Base
  # Relations
  belongs_to :school, optional: true
  has_many :classrooms_users
  has_many :users, through: :classrooms_users
  has_and_belongs_to_many :subjects

  # Validations
  validates :name, presence: true
  validates :name, uniqueness: {
    scope: :school,
    message: 'This class already exits for this school.'
  }, unless: proc { |classroom| classroom.school_id.nil? }
end
