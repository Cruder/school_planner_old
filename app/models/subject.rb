# frozen_string_literal: true

class Subject < ActiveRecord::Base
  # Relations
  belongs_to :teacher, class_name: :User, foreign_key: :teacher_id
  has_many :homework
  has_and_belongs_to_many :classrooms
end
