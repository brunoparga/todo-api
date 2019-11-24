# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'todos#index'
  put '/:id', to: 'todos#update'
end
