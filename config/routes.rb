Rails.application.routes.draw do
  resources :todo, :projects
  root :to => 'projects#index'
  get '/' =>'projects#index'
  post 'todo/create' => 'todo#create'
  put 'todo/update' => 'todo#update'
  get 'projects/create' =>'projects#create'
  get 'projects/update' => 'projects#update'
  get 'projects/delete' => 'projects#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
