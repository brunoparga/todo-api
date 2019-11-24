# frozen_string_literal: true

# To-dos Controller
class TodosController < ApplicationController
  def index
    render json: Todo.all
  end

  def update
    todo = Todo.find(params[:id])
    todo.mark_as_done!
    render json: Todo.all
  end
end
