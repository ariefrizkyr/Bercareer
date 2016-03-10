Rails.application.routes.draw do
  root 'pages#index'

  get 'company-home' => 'pages#company_home'
  get 'your-applications' => 'students#your_apply'
  get 'your-applicants' => 'companies#your_applicant'
  get 'your-jobs' => 'companies#your_job'

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
