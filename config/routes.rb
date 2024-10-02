# frozen_string_literal: true

Rails.application.routes.draw do
  resources :projects do
    resources :project_materials
    resources :manufacturing_processes
    resources :inspections
    resource :estimate
    resource :approval
  end

  resources :materials
  resources :material_categories
  resources :material_suppliers
  resources :clients
  resources :factories
  resources :users
end
