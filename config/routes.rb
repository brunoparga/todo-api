# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'todos#index'
  post '/', to: 'todos#create'
  put '/:id', to: 'todos#update'
end
