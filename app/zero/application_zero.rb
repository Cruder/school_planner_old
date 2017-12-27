# frozen_string_literal: true

class ApplicationZero
  def initialize(base)
    @base = base
  end

  def method_missing(*args)
    @base.public_send(*args)
  rescue StandardError
    super
  end

  def respond_to_missing?(*)
    true
  end
end
