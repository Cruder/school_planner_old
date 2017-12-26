# frozen_string_literal: true

class ClassSubject < ApplicationRecord
  belongs_to :classroom
  belongs_to :subject
end
