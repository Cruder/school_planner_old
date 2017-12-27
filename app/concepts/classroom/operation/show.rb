# frozen_string_literal: true

class Classroom::Show < Trailblazer::Operation
  step Model(Classroom, :find_by)
end
