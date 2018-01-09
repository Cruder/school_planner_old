# frozen_string_literal: true

class Profile::Update < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Nested(Profile::Show)
    step Contract::Build(constant: Profile::Contract::Update)
  end

  step Nested(Present)
  step Contract::Validate(key: :profile)
  step Contract::Persist()
end
