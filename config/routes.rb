Rails.application.routes.draw do
  root 'pages#index'

  get 'company-home' => 'pages#company_home'
  get 'your-jobs' => 'jobs#your_job'
  get 'your-applications' => 'applies#your_applies'
  get 'your-applicants' => 'jobs#your_applicants'

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
    resources :applies, only: [:create]
  end

end
