# frozen_string_literal: true

class UserZero < ApplicationZero
  def id
    0
  end

  def profiles
    Profile.none
  end

  def name
    'Disconnected User'
  end

  def connected?
    false
  end

  def to_proc
    -> { User.none }
  end
end
