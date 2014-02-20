TwoHeartsMonsterPack::Application.routes.draw do
  devise_for :users
  #resources :services
  # Statics pages
  get '/about'                                      => 'page#about'
  get '/contact', to: 'contact#new', :as => 'contact'
  post '/contact', to: 'contact#create', :as => 'contact_post'
  get '/services'                                    => 'services#index'
  get '/services/:id'                   => 'services#show', :as => 'services_catalog'
  get '/services/:category_id/:id'  => 'services#get_childs', :as => 'services_sub_catalog'
  get '/sitemap'    => redirect('/sitemap/sitemap.xml'), :as => 'sitemap'
  get '/banner' => 'page#bannertest' # temp pasha
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
