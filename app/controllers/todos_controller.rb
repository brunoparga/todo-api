# frozen_string_literal: true

# To-dos Controller
class TodosController < ApplicationController
  def index
    render json: Todo.order(:created_at)
  end

  def update
    todo = Todo.find(params[:id])
    todo.toggle_done!
    render json: Todo.order(:created_at)
  end
end
