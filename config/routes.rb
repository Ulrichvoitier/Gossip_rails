Rails.application.routes.draw do
  get 'welcome/welcome_user'
  get 'contact/contact_section'
  get 'contact/contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  get '/team', to: 'team#team_section'
  get '/contact', to:'contact#contact_section'
  get '/welcome/:id', to: 'welcome#welcome_user'

  # get '/contact', to: '#contact'
  # get '/static_pages/contact', to: 'static_pages#contact'

  # Defines the root path route ("/")
  # root "articles#index"
end