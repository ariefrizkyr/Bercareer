Rails.application.routes.draw do
  root 'pages#index'

  get 'company-home' => 'pages#company_home'
  get 'your-applications' => 'students#your_apply'
  get 'your-accepted-jobs' => 'students#your_accepted_job'
  get 'your-jobs' => 'companies#your_job'
  get 'your-applicants' => 'companies#your_applicant'
  get 'your-employee' => 'companies#your_employee'

  devise_for :companies
  devise_for :students

  resources :messages, only: [:new, :create]

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end

    collection do
      delete :empty_trash
    end
  end

  resources :students do
    resource :resume, except: [:index, :show]
    resources :accepts, only: [:create]
    resources :feedbacks, except: [:show]
    collection do
      match 'search' => 'students#search', via: [:get, :post], as: :search
    end
  end

  resources :companies do
    resource :profile, except: [:index, :show]
    resources :reviews, except: [:show]
    collection do
      match 'search' => 'companies#search', via: [:get, :post], as: :search
    end
  end

  resources :jobs do
    resources :applies, only: [:create]
    collection do
      match 'search' => 'jobs#search', via: [:get, :post], as: :search
    end
  end

end
