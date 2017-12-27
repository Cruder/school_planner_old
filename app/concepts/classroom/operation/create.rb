# frozen_string_literal: true

class Classroom::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Classroom, :new)
    step Contract::Build(constant: Classroom::Contract::Create)
  end

  step Nested(Present)
  step Contract::Validate(key: :classroom)
  step Contract::Persist()
end
