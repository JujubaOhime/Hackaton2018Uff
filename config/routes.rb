Rails.application.routes.draw do
  root to: "static_page#home"
  devise_for :students
  resources :students

  resources :quizzes do
    resources :questions, except: [:index]
  end

  resources :questions do
    resources :answers, except: [:show, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
