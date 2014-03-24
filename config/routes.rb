BasicStarterTemplate::Application.routes.draw do
  get "calendar" => "calendar#index"
  get "community" => "community#index"
  get "about" => "about#index"
  get "contact" => "contact#index"
  get "blog" => "blog#index"
  resources :interactions

  resources :programme_units

  resources :programmes

  resources :units

  resources :unit_types

  resources :skills

  resources :categories

  resources :posts

  resources :testimonial_answers

  resources :testimonial_questions

  resources :consultations

  resources :enquiries

  resources :events

  get "admin" => "admin#index"
  resources :user_profiles

  devise_for :users
  root 'home#index'
end
