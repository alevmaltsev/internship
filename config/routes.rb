Rails.application.routes.draw do
  scope module: :web do
    root to: 'welcome#index'

    get '/elements', to: 'element#index'

    namespace :admin do
      root to: 'students#index'

      resources :students, only: [:index, :new, :create, :edit, :update, :destroy]
      resources :companies
      resources :universities
    end
  end
end
