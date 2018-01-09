# frozen_string_literal: true

class Profile::Show < Trailblazer::Operation
  step :model!

  private

  def model!(options, current_user:, params:, **)
    options['model'] = ::Profile.where(user_id: current_user.id)
                                .find(params[:id])
  end
end
