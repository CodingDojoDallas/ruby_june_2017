Rails.application.routes.draw do
  # users routes
  root "users#new"
  post "/users" => "users#create"
  get "/users/:user_id/edit" => "users#edit"
  put "/users/:user_id" => "users#update"

  # sessions routes
  post "/sessions" => "sessions#create"
  delete "/sessions/:id" => "sessions#destroy"

  # events routes
  get "/events" => "events#index"
  post "/events" => "events#create"
  get "/events/:event_id" => "events#show"
  get "/events/:event_id/edit" => "events#edit"
  put "/events/:event_id" => "events#update"
  delete "/events/:event_id" => "events#destroy"
  post "/events/:event_id/join" => "events#join"
  delete "/events/:event_id/cancel" => "events#cancel"

  # comments routes
  post "/events/:event_id/comments" => "comments#create"

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
