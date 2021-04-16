Rails.application.routes.draw do
  scope module: :web do
    root to: 'welcome#index'

    get '/elements', to: 'element#index'

    namespace :admin do
      root to: 'students#index'

      resources :students, only: [:index, :new, :create, :edit, :update, :destroy]
      resources :companies, only: [:index, :new, :create, :edit, :update, :destroy]
      resources :universities, only: [:index, :new, :create, :edit, :update, :destroy]
    end
  end
end
