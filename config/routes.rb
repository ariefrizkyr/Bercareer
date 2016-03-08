Rails.application.routes.draw do
  root 'pages#index'

  get 'company-home' => 'pages#company_home'
  get 'your-jobs' => 'jobs#your_job'

  devise_for :companies
  devise_for :students

  resources :students do
    resource :resume
  end

  resources :companies do
    resource :profile
  end

  resources :jobs

  resources :jobs do
    resources :applies
  end

end
