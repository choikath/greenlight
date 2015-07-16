Rails.application.routes.draw do
  
  resources :services
  resources :patients
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'patients#index'
  get 'clear_all' => 'patients#clear_all'
  #get 'leaveNote' => 'patients#leaveNote'
  #get 'clear_all' => 'patients#clear_all'
  
  # Example of regular route:
  #get 'products/:id' => 'catalog#view'
  #get 'services/:id' => 'services#show'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  resources :patients do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
       collection do
         get 'clear_all'
       end
     end

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