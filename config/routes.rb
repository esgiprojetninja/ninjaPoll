Rails.application.routes.draw do
  resources :types
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :answers
  post 'answers/save-all', to: 'answers#save_all', as: :answer_poll
  resources :poll_questions
  root 'home#index'
  resources :poll_questions
  resources :polls
  get 'polls/:id/answer', to: 'polls#answer', as: :poll_answer
end
