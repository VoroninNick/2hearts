TwoHeartsMonsterPack::Application.routes.draw do
  devise_for :users
  #resources :services
  # Statics pages
  match '/about'                                      => 'page#about'
  match '/contact'                                    => 'page#contact', :as => 'contact'
  match '/services'                                    => 'services#index'
  match '/services/:category_id/:id'                   => 'services#show', :as => 'services_catalog'
  match '/services/:category_id/:sub_category_id/:id'  => 'services#show', :as => 'services_sub_catalog'
  # Mount CK Editor
  # TODO: Migrate db in production ?
  mount Ckeditor::Engine                              => '/ckeditor'
  # Mount logger
  mount Rubyception::Engine                           => '/rubyception'
  # Mount Rails Admin
  mount RailsAdmin::Engine                            => '/admin', :as => 'rails_admin'
  # Root page
  root :to                                            => 'page#index'
end
