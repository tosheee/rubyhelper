Rails.application.routes.draw do

  root 'static_pages#rubyhelper'

  resources :description_keywords

  resources :syntax_elements_rubies

  resources :ruby_syntax

  resources :syntax_keyword_rubies

  resources :index_ruby_syntaxes

  devise_for :users, controllers: { registrations: 'registrations' }

end
