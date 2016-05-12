# == Route Map
#
#     Prefix Verb   URI Pattern                Controller#Action
#       root GET    /                          users#index
#     albums GET    /albums(.:format)          albums#index
#            POST   /albums(.:format)          albums#create
#  new_album GET    /albums/new(.:format)      albums#new
# edit_album GET    /albums/:id/edit(.:format) albums#edit
#      album GET    /albums/:id(.:format)      albums#show
#            PATCH  /albums/:id(.:format)      albums#update
#            PUT    /albums/:id(.:format)      albums#update
#            DELETE /albums/:id(.:format)      albums#destroy
#     photos GET    /photos(.:format)          photos#index
#            POST   /photos(.:format)          photos#create
#  new_photo GET    /photos/new(.:format)      photos#new
# edit_photo GET    /photos/:id/edit(.:format) photos#edit
#      photo GET    /photos/:id(.:format)      photos#show
#            PATCH  /photos/:id(.:format)      photos#update
#            PUT    /photos/:id(.:format)      photos#update
#            DELETE /photos/:id(.:format)      photos#destroy
#      users GET    /users(.:format)           users#index
#            POST   /users(.:format)           users#create
#   new_user GET    /users/new(.:format)       users#new
#  edit_user GET    /users/:id/edit(.:format)  users#edit
#       user GET    /users/:id(.:format)       users#show
#            PATCH  /users/:id(.:format)       users#update
#            PUT    /users/:id(.:format)       users#update
#            DELETE /users/:id(.:format)       users#destroy
#

Rails.application.routes.draw do
  root 'users#index'
  resources :albums
  resources :photos
  resources :users
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
