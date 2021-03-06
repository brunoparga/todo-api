# frozen_string_literal: true

# To-dos Controller
class TodosController < ApplicationController
  def index
    render json: Todo.order(:created_at)
  end

  def create
    render json: Todo.create(params.permit(:task))
  end

  def update
    todo = Todo.find(params[:id])
    todo.toggle_done!
    render json: todo
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
  end
end
