Rails.application.routes.draw do
  resources :fields
  devise_for :users
  resources :users
  resources :skills
  resources :sections
  resources :rules
  resources :games
  resources :character_skills
  resources :character_sections
  resources :character_characters
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
