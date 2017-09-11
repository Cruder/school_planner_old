# frozen_string_literal: true

class HomeworksUser < ActiveRecord::Base
  # Relations
  belongs_to :user
  belongs_to :homework

  # Enum
  enum progress: %i(todo wip done)
end
