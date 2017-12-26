# frozen_string_literal: true

class Membership < ApplicationRecord
  belongs_to :student, class_name: 'Profiles::Student'
  belongs_to :classroom
end
