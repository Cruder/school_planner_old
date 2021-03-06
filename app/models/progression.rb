# frozen_string_literal: true

class Progression < ApplicationRecord
  belongs_to :student, class_name: 'Profiles::Student'
  belongs_to :homework
end
