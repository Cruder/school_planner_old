# frozen_string_literal: true

class ProfilesController < ApplicationController
  def index
    @collection = scope.all

    render json: @collection.to_json
  end

  def show
    @item = scope.find(params[:id])

    render json: @item.to_json
  end

  private

  def scope
    Profile.where(user_id: current_user.id)
  end
end
