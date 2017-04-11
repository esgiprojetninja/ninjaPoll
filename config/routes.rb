Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :answers
  resources :users
  resources :poll_questions
  resources :polls
  post 'answers/save-all', to: 'answers#save_all', as: :answer_poll
  root 'home#index'
  get 'polls/:id/answer', to: 'polls#answer', as: :poll_answer
end
