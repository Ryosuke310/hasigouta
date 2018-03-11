Rails.application.routes.draw do
  
  get 'comment/create'

  devise_for :artists
  get 'encourage/new'

  devise_for :users
  
  # bitcoin
  get 'bit/new' 
  
  # user
  get 'user/:id/like' => "user#like"
  get 'user/user_artist' => "user#user_artist"
  
  #like
  post 'like/:blog_id/create' => "like#create"
  post 'like/:blog_id/destroy' => "like#destroy"
  
  #encourage
  post "encourage/:artist_id/create" => "encourage#create"
  post "encourage/:artist_id/destroy" => "encourage#destroy"

  #comment
  #get 'comment/new' => "comment#new"
  post 'comment/create' => "comment#create"

  #blog
  get 'blog/new' => "blog#new"
  post 'blog/create' => "blog#create"
  get 'blog/:id' => "blog#show"

  # event
  get 'event' => "event#index"
  get 'event/new' => "event#new"
  post 'event/create' => "event#create"
  get 'event/:id' => "event#show"
  get 'event/:date/show' => "event#show_one_day"
  get 'event/:id/edit' => "event#edit"
  post 'event/:id/update' => "event#update"
  post 'event/:id/destroy' => "event#destroy"

  # Home
  get '/' => "home#top"
  
  # Artist
  get 'signup' => "artist#new"
  post 'artists/create' => "artist#create"
  get 'artist/:id/show' => "artist#show"
  
  root to: "home#top"
  
  # other
  get 'privacy' => "other#privacy"
  get 'about' => "other#about"
  get 'rule' => "other#rule"
  get 'contact' => "other#contact"
  get 'howtoenjoy' => "other#howtoenjoy"
  
  
  
  
  
  
  
  
  
  
  
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
