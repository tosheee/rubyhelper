Rails.application.routes.draw do

  root 'static_pages#rubyhelper'

  resources :syntax_elements_rubies

  resources :ruby_syntax

  resources :syntax_keyword_rubies

  devise_for :users, controllers: { registrations: 'registrations' }

end
