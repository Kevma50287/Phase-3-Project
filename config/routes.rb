Rails.application.routes.draw do
  resources :tasks_joiners
  resources :user_events
  resources :group_joiners
  resources :calendars
  resources :tasks
  resources :users do
    resources :groups
    resources :events
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
