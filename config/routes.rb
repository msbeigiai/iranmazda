Rails.application.routes.draw do
  resources :blogs, path: 'blog'
    #get 'blog', to: 'blogs#index'
  # get 'errors/not_found'
#
#   get 'errors/internal_server_error'

  #get 'services/our_services'

  root 'welcome#index'

  get 'about_us', to: 'about', controller: 'welcome'
  get 'our_services', to: 'our_services', controller: 'services'
  #get 'contact_us', to: 'contact_us', controller: 'welcome'
  match '/contacts', to: 'contacts#new', via: 'get'
  resources 'contacts', only: [:new, :create]

  get 'services/oil_and_filters'
  get 'services/engine_diagnostics'
  get 'services/belt_and_hoses'
  get 'services/air_conditioning'
  get 'services/brake_repair'
  get 'services/tire_and_wheel'

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
