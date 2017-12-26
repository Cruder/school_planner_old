# frozen_string_literal: true

class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  def current_user
    super || UserZero.new(User.new)
  end
end
