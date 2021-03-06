Rails.application.routes.draw do
  match '/', to: 'home#index', constraints: { subdomain: 'www' }, via: [:all]
  #match '/', to: 'resume_preview#preview_layout_1', constraints: { subdomain: /.+/ }, via: [:all]
  match '/', to: 'myresume#my_resume', constraints: { subdomain: /.+/ }, via: [:all]

  devise_for :admins, controllers: {registrations:'admins/registrations', sessions: 'admins/sessions'}
  resources :certificates
  resources :video_galleries
  resources :layouts
  get 'manage_layout/index', as: 'manage_layout'
  get 'resume_preview/printView'
  get 'resume_preview/preview_layout_3'
  post 'manage_layout/new', to: 'manage_layout#create'
  get 'manage_layout/new'
  get 'manage_layout/edit/:id', to: 'manage_layout#edit', as: 'manage_layout_edit'
  get 'dashboard/index'
  get 'dashboard/admin_page', as: 'admin_home'

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

  devise_for :users, controllers: {registrations: 'registrations'}
  root 'home#index'



end
