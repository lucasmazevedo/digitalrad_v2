Rails.application.routes.draw do
  root to: 'site#index'
  #devise models
  devise_for :users, :skip => [:registration]
  devise_for :admins, :skip => [:registration]
  #site routes
  get "quem-somos", to: "site#about", as: "quem-somos"
  get "laudos-a-distancia", to: "site#report", as: "laudos-distancia"
  get "casos-clinicos", to: "site#cases", as: "casos-clinicos"
  get "fale-conosco", to: "site#contact", as: "fale-conosco"
  get "contratos", to: "contracts#index", as: "contratos"
  get "enviar-contrato", to: "contracts#upload", as: "enviar-contratos"

  #devise_for :admins
  namespace :admin do
    root to: "dashboard#index"
    resources :admins, path: "users"
    resources :reports
    resources :staffs
    resources :companies
    resources :partners
    resources :sliders
    resources :solutions
    resources :blocks
    resources :pages
    resources :cases
    resources :structures
    resources :case_attachments
    resources :users, path: "clients"
  end
end
