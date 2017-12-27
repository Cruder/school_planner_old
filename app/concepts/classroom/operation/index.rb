# frozen_string_literal: true

class Classroom::Index < Trailblazer::Operation
  step :model!

  def model!(options, *)
    options['model'] = ::Classroom.all
  end
end
