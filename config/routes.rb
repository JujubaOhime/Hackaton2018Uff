Rails.application.routes.draw do
  
  get 'achievements', to: 'achievements#index', as: :achievements
  get 'achievements/:id', to: 'achievements#show', as: :show_achievement

  root to: "static_page#home"
  devise_for :users
  resources :users
  resources :answers, except: [:index, :new, :show, :edit]

  resources :quizzes do
    resources :questions, except: [:edit, :index, :show]
  end

  get 'quiz_finished', to: 'quizzes#quiz_finished', as: :quiz_finished

  resources :questions, except: [:new, :index] do
    resources :answers, except: [:show, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
