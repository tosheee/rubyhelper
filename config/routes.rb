Rails.application.routes.draw do

  namespace :admin do
    resources :rails_method_descriptions
  end
  namespace :admin do
    resources :rails_name_methods
  end
  namespace :admin do
    resources :ruby_name_method_full_descriptions
  end
  namespace :admin do
    resources :ruby_name_methods
  end
  namespace :admin do
    resources :ruby_name_methods
  end
  namespace :admin do
    resources :ruby_name_classes
  end
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

  resources :ruby_syntax

  resources :index_ruby_syntaxes

  resources :ruby_guide_methods

  resources :rails_enviroments

  devise_for :users, controllers: { registrations: 'registrations' }

end
