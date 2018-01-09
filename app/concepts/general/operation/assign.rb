class General::Assign < Trailblazer::Operation
  step :assign!

  private

  def assign!(options, current_user:, **)
    options['model'].user_id = current_user.id
  end
end
