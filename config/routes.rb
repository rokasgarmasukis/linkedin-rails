Rails.application.routes.draw do
  root 'main#index'

  get 'about', to: 'main#about'
  get 'main/index'

  resources :categories do
    member do
      get :delete
    end
  end
  resources :tasks do
    member do
      get :delete
    end
  end

  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/delete'

  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/delete'
end
