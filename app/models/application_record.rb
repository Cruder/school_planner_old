# frozen_string_literal: true

# Defaults for models
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
