Rails.application.routes.draw do
  scope module: :web do
    root to: 'welcome#index'

    get '/elements', to: 'element#index'
  end
end
