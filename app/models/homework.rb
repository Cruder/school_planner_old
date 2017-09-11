# frozen_string_literal: true

class Homework < ActiveRecord::Base
  # Relations
  belongs_to :subject
  belongs_to :classroom
  belongs_to :edited_by, class_name: :User, foreign_key: :edited_by_id
  belongs_to :created_by, class_name: :User, foreign_key: :created_by_id
end
