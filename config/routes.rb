Rails.application.routes.draw do
  root 'buttons#index'

  resources :buttons, only: [:index, :show, :new, :create, :edit, :update]
  # get 'buttons/add/:id', to: 'buttons#add', as: :add
  # patch 'buttons/add_more_buttons/:id', to: 'buttons#add_more_button', as: :add_more_button
  # get 'buttons/substract/:id', to: 'buttons#substract', as: :substract
  # patch 'buttons/substract_buttons', to: 'buttons#substract_button', as: :substract_button

end
