# frozen_string_literal: true

module Profiles
  class Student < Profile
    has_many :memberships
    has_many :classrooms, through: :memberships
  end
end
