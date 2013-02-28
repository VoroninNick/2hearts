TwoHeartsMonsterPack::Application.routes.draw do

  # Statics pages
  match '/about'            => 'page#about'
  match '/contact'          => 'page#contact'

  # Mount logger
  mount Rubyception::Engine => '/rubyception'

  # Root page
  root :to                  => 'page#index'

end
