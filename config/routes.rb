Rails.application.routes.draw do
  get 'static_page/home'
  root to: "students#index"
  devise_for :students
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
