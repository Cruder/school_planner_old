# frozen_string_literal: true

class Classroom < ApplicationRecord
  has_many :class_subjects
  has_many :memberships
  has_many :students, class_name: 'Profiles::Student',
                      through: :memberships
end
