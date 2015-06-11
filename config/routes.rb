Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------
  root "pictures#index"

  # Routes for the Profile resource:
  # CREATE
  get "/pictures/new", :controller => "pictures", :action => "new"
  post "/create_picture", :controller => "pictures", :action => "create"

  # READ
  get "/pictures", :controller => "pictures", :action => "index"
  get "/pictures/profile", :controller => "pictures", :action => "profile"
  get "/pictures/discovery", :controller => "pictures", :action => "discovery"
  get "/pictures/:id", :controller => "pictures", :action => "show"

  # UPDATE
  get "/pictures/:id/edit", :controller => "pictures", :action => "edit"
  post "/update_picture/:id", :controller => "pictures", :action => "update"

  # DELETE
  get "/delete_picture/:id", :controller => "pictures", :action => "destroy"
  #------------------------------

  # Routes for the Follow resource:
  # CREATE
  get "/follows/new", :controller => "follows", :action => "new"
  post "/create_follow", :controller => "follows", :action => "create"

  # READ
  get "/follows", :controller => "follows", :action => "index"
  get "/follows/:id", :controller => "follows", :action => "show"

  # UPDATE
  get "/follows/:id/edit", :controller => "follows", :action => "edit"
  post "/update_follow/:id", :controller => "follows", :action => "update"

  # DELETE
  get "/delete_follow/:id", :controller => "follows", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  # Routes for the Size resource:
  # CREATE
  get "/sizes/new", :controller => "sizes", :action => "new"
  post "/create_size", :controller => "sizes", :action => "create"

  # READ
  get "/sizes", :controller => "sizes", :action => "index"
  get "/sizes/:id", :controller => "sizes", :action => "show"

  # UPDATE
  get "/sizes/:id/edit", :controller => "sizes", :action => "edit"
  post "/update_size/:id", :controller => "sizes", :action => "update"

  # DELETE
  get "/delete_size/:id", :controller => "sizes", :action => "destroy"
  #------------------------------

  # Routes for the Cart resource:
  # CREATE
  get "/carts/new", :controller => "carts", :action => "new"
  post "/create_cart", :controller => "carts", :action => "create"

  # READ
  get "/carts", :controller => "carts", :action => "index"
  get "/carts/:id", :controller => "carts", :action => "show"

  # UPDATE
  get "/carts/:id/edit", :controller => "carts", :action => "edit"
  post "/update_cart/:id", :controller => "carts", :action => "update"

  # DELETE
  get "/delete_cart/:id", :controller => "carts", :action => "destroy"
  #------------------------------

  # Routes for the Frame resource:
  # CREATE
  get "/frames/new", :controller => "frames", :action => "new"
  post "/create_frame", :controller => "frames", :action => "create"

  # READ
  get "/frames", :controller => "frames", :action => "index"
  get "/frames/:id", :controller => "frames", :action => "show"

  # UPDATE
  get "/frames/:id/edit", :controller => "frames", :action => "edit"
  post "/update_frame/:id", :controller => "frames", :action => "update"

  # DELETE
  get "/delete_frame/:id", :controller => "frames", :action => "destroy"
  #------------------------------

  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Background_picture resource:
  # CREATE
  get "/background_pictures/new", :controller => "background_pictures", :action => "new"
  post "/create_background_picture", :controller => "background_pictures", :action => "create"

  # READ
  get "/background_pictures", :controller => "background_pictures", :action => "index"
  get "/background_pictures/:id", :controller => "background_pictures", :action => "show"

  # UPDATE
  get "/background_pictures/:id/edit", :controller => "background_pictures", :action => "edit"
  post "/update_background_picture/:id", :controller => "background_pictures", :action => "update"

  # DELETE
  get "/delete_background_picture/:id", :controller => "background_pictures", :action => "destroy"
  #------------------------------

  # Routes for the Profile_picture resource:
  # CREATE
  get "/profile_pictures/new", :controller => "profile_pictures", :action => "new"
  post "/create_profile_picture", :controller => "profile_pictures", :action => "create"

  # READ
  get "/profile_pictures", :controller => "profile_pictures", :action => "index"
  get "/profile_pictures/:id", :controller => "profile_pictures", :action => "show"

  # UPDATE
  get "/profile_pictures/:id/edit", :controller => "profile_pictures", :action => "edit"
  post "/update_profile_picture/:id", :controller => "profile_pictures", :action => "update"

  # DELETE
  get "/delete_profile_picture/:id", :controller => "profile_pictures", :action => "destroy"
  #------------------------------

  # Routes for the Material resource:
  # CREATE
  get "/materials/new", :controller => "materials", :action => "new"
  post "/create_material", :controller => "materials", :action => "create"

  # READ
  get "/materials", :controller => "materials", :action => "index"
  get "/materials/:id", :controller => "materials", :action => "show"

  # UPDATE
  get "/materials/:id/edit", :controller => "materials", :action => "edit"
  post "/update_material/:id", :controller => "materials", :action => "update"

  # DELETE
  get "/delete_material/:id", :controller => "materials", :action => "destroy"
  #------------------------------
  devise_for :users
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
