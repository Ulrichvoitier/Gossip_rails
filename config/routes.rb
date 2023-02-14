Rails.application.routes.draw do
  get 'welcome/welcome_user'
  get 'contact/contact_section'
  get 'contact/contact'
  get 'gossips/gossips_new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  get '/team', to: 'team#team_section'
  get '/contact', to:'contact#contact_section'
  get '/welcome/:id', to: 'welcome#welcome_user'

  # get 'gossip#index'
  # get '/gossips/:id', to:'gossips#gossips_new'
  # get '/gossips/:id', to:'gossips#create'

  resources :gossips

  # get '/contact', to: '#contact'
  # get '/static_pages/contact', to: 'static_pages#contact'

  # Defines the root path route ("/")
  # root "articles#index"
end