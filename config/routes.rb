Rails.application.routes.draw do
  resources :listings
root :to => 'static_pages#home'
get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/host',    to: 'static_pages#host'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
