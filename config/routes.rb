Rails.application.routes.draw do
  resources :quizzes
  root to: "students#index"
  devise_for :students
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
