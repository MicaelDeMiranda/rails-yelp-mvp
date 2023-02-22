# frozen_string_literal: true

Rails.application.routes.draw do
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[new create]
  end
end
