# frozen_string_literal: true

class ProfilesController < ApplicationController
  def index
    run Profile::Index

    render json: result['model']
  end

  def show
    run Profile::Show

    render json: result['model']
  end

  def create
    run Profile::Create

    if result.success?
      render json: result['model']
    else
      render json: result['errors']
    end
  end

  def update
    run Profile::Update

    if result.success?
      render json: result['model']
    else
      render json: result['errors']
    end
  end

  def delete
    run Profile::Delete

    if result.success?
      head :none
    else
      result['errors']
    end
  end
end
