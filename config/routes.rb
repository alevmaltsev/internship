Rails.application.routes.draw do
  scope module: :web do
    root to: 'interships#index'

    get '/elements', to: 'element#index'
    resources :interships, only: [:index, :show]

    namespace :admin do
      root to: 'students#index'

      resources :skills, only: [:index, :new, :create, :edit, :update, :destroy]
      resources :students, only: [:index, :new, :create, :edit, :update, :destroy]
      resources :companies, only: [:index, :new, :create, :edit, :update, :destroy]
      resources :universities, only: [:index, :new, :create, :edit, :update, :destroy]
      resources :interships, only: [:index, :new, :create, :edit, :update, :destroy]
    end

    namespace :student do
      root to: 'profiles#index'

      resource :profile, only: [:index, :edit, :update]
      resource :session, only: [:new, :create, :destroy]
    end
  end
end
