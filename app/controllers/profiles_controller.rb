# frozen_string_literal: true

class ProfilesController < ApplicationController
  def index
    @collection = scope.all

    render json: ProfileRepresenter.new(@collection)
  end

  def show
    @item = scope.find(params[:id])

    render json: ProfileRepresenter.new(@collection)
  end

  private

  def scope
    Profile.joins(:user).merge(current_user)
  end
end
