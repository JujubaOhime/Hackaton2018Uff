Rails.application.routes.draw do
  root to: "static_page#home"
  devise_for :students
  resources :students
  resources :answers, except: [:index, :new, :show, :edit]

  resources :quizzes do
    resources :questions, except: [:edit, :index, :show]
  end

  post 'quiz_finished', to: 'quizzes#quiz_finished', as: :quiz_finished

  resources :questions, except: [:new, :index] do
    resources :answers, except: [:show, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
