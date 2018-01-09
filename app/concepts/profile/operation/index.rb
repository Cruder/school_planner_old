# frozen_string_literal: true

class Profile::Index < Trailblazer::Operation
  step :model!

  private

  def model!(options, current_user:, **)
    options['model'] = ::Profile.where(user_id: current_user.id)
  end
end
