Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: "home#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :admin do
    resources :admin_users do
      get :autocomplete_admin_user_email, :on => :collection
    end
  end

  get '/course_outcome', to: 'charts#course_outcome_search'
  get '/course' => 'charts#course_search'
  get '/program_outcome' => 'charts#program_outcome_search'
  get '/program_source_outcome' => 'charts#program_source_outcome_search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
