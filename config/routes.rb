# frozen_string_literal: true

Rails.application.routes.draw do
  resources :playground, only: :index

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }

  root to: 'playground#index'
end
