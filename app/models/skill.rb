# frozen_string_literal: true

class Skill < ApplicationRecord
  belongs_to :teacher, class_name: 'Profiles::Teacher'
end
