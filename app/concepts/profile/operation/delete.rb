# frozen_string_literal: true

class Profile::Delete < Trailblazer::Operation
  step Model(Profile, :find_by)
  step :delete!

  def delete!(_options, model:, **)
    model.destroy
  end
end
