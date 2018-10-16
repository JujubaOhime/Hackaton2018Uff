Rails.application.routes.draw do
  get 'static_page/home'
  root to: "students#index"
  devise_for :students
  resources :students

  resources :quizzes do
    resources :questions, except: [:index, :show]
  end

  resources :questions, except: [:show, :index] do
    resources :answers, except: [:show, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
