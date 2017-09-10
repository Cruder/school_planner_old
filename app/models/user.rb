# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
  include DeviseTokenAuth::Concerns::User

  # Relations
  has_many :classrooms_users
  has_many :classrooms, through: :classrooms_users
  has_many :schools, through: :classrooms
  has_many :subjects, foreign_key: :teacher_id
end
