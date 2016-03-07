Rails.application.routes.draw do
  root 'pages#index'

  get 'company-home' => 'pages#company_home'

  devise_for :companies
  devise_for :students

  resources :students do
    resource :resume
  end

  resources :companies do
    resource :profile
  end

  resources :jobs
end
