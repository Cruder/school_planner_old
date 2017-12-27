# frozen_string_literal: true

class Classroom::Update < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Classroom, :find_by)
    step Contract::Build(constant: Classroom::Contract::Update)
  end

  step Nested(Present)
  step Contract::Validate(key: :classroom)
  step Contract::Persist()
end
