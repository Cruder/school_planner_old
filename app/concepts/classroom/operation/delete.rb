# frozen_string_literal: true

class Classroom::Delete < Trailblazer::Operation
  step Model(Classroom, :find_by)
  step :delete!

  def delete!(_options, model:, **)
    model.destroy
  end
end
