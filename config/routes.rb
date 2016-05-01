Rails.application.routes.draw do

  namespace :admin do
    resources :ruby_syntax_keyword_descriptions
  end
  namespace :admin do
    resources :ruby_syntax_name_keywords
  end
  namespace :admin do
    resources :ruby_syntax_name_elements
  end
  namespace :admin do
    resources :rails_name_structures
  end
  root 'static_pages#rubyhelper'

  resources :description_keywords

  resources :syntax_elements_rubies

  resources :ruby_syntax

  resources :syntax_keyword_rubies

  resources :index_ruby_syntaxes

  resources :type_inner_methods

  resources :ruby_guide_methods

  resources :class_name_methods

  devise_for :users, controllers: { registrations: 'registrations' }

end
