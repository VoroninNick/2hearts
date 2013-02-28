TwoHeartsMonsterPack::Application.routes.draw do
  

  

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  

  resources :services

  # Statics pages
  match '/about'            => 'page#about'
  match '/contact'          => 'page#contact'

  # Mount CK Editor
  # TODO: Migrate db in production ?
  mount Ckeditor::Engine => '/ckeditor'

  # Mount logger
  mount Rubyception::Engine => '/rubyception'

  # Root page
  root :to                  => 'page#index'

end
