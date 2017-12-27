# frozen_string_literal: true

class Homework < ApplicationRecord
  belongs_to :classroom

  has_many :progressions
end
