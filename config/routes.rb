Rails.application.routes.draw do
  get 'session/new'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :answers
  resources :poll_questions
  resources :polls
  post 'answers/save-all', to: 'answers#save_all', as: :answer_poll
  root 'home#index'
  get 'polls/:id/answer', to: 'polls#answer', as: :poll_answer

  # User
  resources :users
  get 'signup', to: 'users#new', as: :signup
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  get 'logout', to: 'session#destroy'
end
