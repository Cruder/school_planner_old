# frozen_string_literal: true

class Sponsorship < ApplicationRecord
  belongs_to :sponsor, class_name: 'User'
  belongs_to :fieul, class_name: 'User'
end
