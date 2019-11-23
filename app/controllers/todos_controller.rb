# frozen_string_literal: true

# To-dos Controller
class TodosController < ApplicationController
  def index
    render json: Todo.all
  end
end
