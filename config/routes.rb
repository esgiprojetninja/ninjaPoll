Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :answers
  resources :poll_questions
  root 'home#index'
  resources :poll_questions
  resources :polls
  get 'polls/:id/answer', to: 'polls#answer', as: :poll_answer
end
