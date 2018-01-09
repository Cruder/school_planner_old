# frozen_string_literal: true

class Profile::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Profile, :new)
    step Contract::Build(constant: Profile::Contract::Create)
  end

  step Nested(Present)
  step Contract::Validate(key: :profile)

  step Nested(General::Assign)

  step Contract::Persist()
end
