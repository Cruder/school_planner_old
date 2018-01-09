# frozen_string_literal: true

class ClassroomsController < ApplicationController
  def index
    run Classroom::Index

    render json: result['model']
  end

  def show
    run Classroom::Show

    render json: result['model']
  end

  def create
    run Classroom::Create

    if result.success?
      render json: result['model']
    else
      render json: result['errors']
    end
  end

  def update
    run Classroom::Update

    if result.success?
      render json: result['model']
    else
      render json: result['errors']
    end
  end

  def delete
    run Classroom::Delete

    if result.success?
      head :none
    else
      result['errors']
    end
  end
end
