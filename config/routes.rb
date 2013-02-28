TwoHeartsMonsterPack::Application.routes.draw do
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
