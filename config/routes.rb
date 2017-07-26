Rails.application.routes.draw do
  
  
  resources :prototypes     
  resources :propositions     
  resources :concepts     
  resources :advantages     
  resources :challenges     
  
  devise_for :teams
  
  resources :teams do
    resources :three_scores
    resources :one_scores
    resources :seven_scores
    resources :six_scores
    resources :five_scores
    resources :four_scores
    resources :two_scores
  end
  resources :players
  resources :capitans

  get 'dashboard/index'

  get 'dashboard/proyecto'

  get 'dashboard/capitan'

  get 'dashboard/equipo'


  get 'dashboard/reto'

  get 'dashboard/ventajas_competitivas'

  get 'dashboard/concepto_validado'

  get 'dashboard/propuesta_de_valor'

  get 'dashboard/prototipado'

  get 'terms/terms'

  resources :projects
  get 'project/equipo'

  
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
