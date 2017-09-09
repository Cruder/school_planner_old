# frozen_string_literal: true

class ClassroomsUser < ActiveRecord::Base
  # Relations
  belongs_to :classroom
  belongs_to :user

  # Enum
  enum as: %i(student delegate teacher)
end
