Rails.application.routes.draw do
  root 'articles#index'

  resources :buttons, only: [:index, :show, :new, :create, :edit, :update]
  resources :threadings, only: [:index, :show, :new, :create, :edit, :update]
  resources :zippers, only: [:index, :show, :new, :create, :edit, :update]
  resources :rubbers, only: [:index, :show, :new, :create, :edit, :update]
  resources :labels, only: [:index, :show, :new, :create, :edit, :update]
  resources :fabrics, only: [:index, :show, :new, :create, :edit, :update]
  resources :articles, only: [:index, :show, :new, :create]

  resources :manifests, only: [:fabric, :add_fabric, :fabric_create,
                               :button, :add_button, :create_button,
                               :label, :add_label, :create_label,
                               :rubber, :add_rubber, :create_rubber,
                               :threading, :add_threading, :create_threading,
                               :zipper, :add_zipper, :create_zipper] do
    collection do
      get 'fabric'
      get 'add_fabric'
      post 'fabric_create'
      get 'button'
      get 'add_button'
      post 'button_create'
      get 'label'
      get 'add_label'
      post 'label_create'
      get 'rubber'
      get 'add_rubber'
      post 'rubber_create'
      get 'threading'
      get 'add_threading'
      post 'threading_create'
      get 'zipper'
      get 'add_zipper'
      post 'zipper_create'
    end
  end

  resources :clients, only: [:index, :show, :new, :create, :edit, :update]
end
