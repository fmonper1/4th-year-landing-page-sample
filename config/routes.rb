Rails.application.routes.draw do

  get "/403", to: "errors#error_403"
  get "/404", to: "errors#error_404"
  get "/422", to: "errors#error_422"
  get "/500", to: "errors#error_500"

  controller :pages do
    get :sampsize,    path: '/portfolio/sampsize'
    get :privacy,     path: '/about/privacy'
    get :legal,       path: '/about/legal'
    get :recruitment, path: '/about/recruitment'
  end

  get "/about", to: redirect('/#about-us')
  get "/products-and-services", to: redirect('/#software')
  get "/genesys", to: redirect('/#teaching')
  get "/people", to: redirect('/#people')
  get "/contact", to: redirect('/#contact')

  root to: "pages#home"
end
