Rails.application.routes.draw do
  scope module: :web do
    root to: 'welcome#index'

    get '/elements', to: 'element#index'

    namespace :admin do
      resources :students
      resources :companies
      resources :universities
    end
  end
end
