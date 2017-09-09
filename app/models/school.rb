# frozen_string_literal: true

class School < ActiveRecord::Base
  # Relations
  has_many :classrooms_users
  has_many :classrooms, through: :classrooms_users
  has_many :users, through: :classrooms

  # Validations
  validates :name, presence: true, uniqueness: true
end
