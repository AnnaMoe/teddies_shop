Rails.application.routes.draw do
  devise_for :users
  root 'teddies#index'
  resources :teddies, only: [:index, :show]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  # open routes to code from an API
  # not my controller, but stripes controller is handling this route '/stripe-webhooks'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
