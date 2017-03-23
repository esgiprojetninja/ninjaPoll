Rails.application.routes.draw do
  resources :answers
  resources :poll_questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :poll_questions
  resources :polls
end
