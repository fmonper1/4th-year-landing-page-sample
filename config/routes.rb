Rails.application.routes.draw do

  get "/403", to: "errors#error_403"
  get "/404", to: "errors#error_404"
  get "/422", to: "errors#error_422"
  get "/500", to: "errors#error_500"

  controller :pages do
    get :pricing, path: '/pricing'
  end

  root to: "pages#home"
end
