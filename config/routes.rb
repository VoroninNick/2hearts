TwoHeartsMonsterPack::Application.routes.draw do
  devise_for :users
  #resources :services
  # Statics pages
  match '/about'                                      => 'page#about'
  match '/contact'                                    => 'page#contact', :as => 'contact'
  match '/services'                                    => 'services#index'
  match '/services/:id'                   => 'services#show', :as => 'services_catalog'
  match '/services/:category_id/:id'  => 'services#get_childs', :as => 'services_sub_catalog'
  match '/sitemap'    => redirect('/sitemap/sitemap.xml'), :as => 'sitemap', :via => :get
  # Mount CK Editor
  # TODO: Migrate db in production ?
  mount Ckeditor::Engine                              => '/ckeditor'
  # Mount logger
 # mount Rubyception::Engine                           => '/rubyception'
  # Mount Rails Admin
  mount RailsAdmin::Engine                            => '/admin', :as => 'rails_admin'
  # Root page
  root :to                                            => 'page#index'
end
