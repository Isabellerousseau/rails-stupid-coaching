# frozen_string_literal: true

Rails.application.routes.draw do
  get 'ask', to: 'questions#ask', as: :ask
  get 'answer', to: 'questions#answer', as: :answer
  # post 'ask', to: 'questions#ask', as: :question
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
