Rails.application.routes.draw do

  devise_for :users
  get "/403", to: "errors#error_403"
  get "/404", to: "errors#error_404"
  get "/422", to: "errors#error_422"
  get "/500", to: "errors#error_500"

  controller :pages do
    get :pricing, path: '/pricing'
  end

  resources :link_clicks, only: :create
  resources :visits, only: :index
  resources :registrations, only: [:new, :create]

  root to: "pages#home"
end
