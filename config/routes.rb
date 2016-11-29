Rails.application.routes.draw do
  resources :video_galleries
  get 'manage_layout/index', as: 'manage_layout'
  get 'resume_preview/preview_layout_1'
  get 'resume_preview/preview_layout_2'
  get 'resume_preview/preview_layout_3'
  post 'manage_layout/new', to: 'manage_layout#create'
  get 'manage_layout/new'
  get 'dashboard/index'

  resources :languages
  resources :skills
  resources :user_layouts
  get 'resume_detail/index'

  resources :references
  resources :summaries
  resources :projects
  resources :employment_histories
  resources :educations
  resources :personal_details
  get 'profile/index'

  devise_for :users
  root 'home#index'

  match '', to: 'resume_preview#preview_layout_3', via: :get, constraints: lambda { |r| r.subdomain.present? && r.subdomain != 'www'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
