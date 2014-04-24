Edgames::Application.routes.draw do
  
  get "pay_pal_process/index"
  get "submit_cart/index"
  post "submit_cart/index"
  get "check_out/index"
  get "view_cart/index"
  get "add_to_cart/index"
  get "static_filter_products", to:"static_filter_products#index"
  get "navigate_category", to:"navigate_category#index"
  
  get "view_all_products", to:"view_all_products#index"
  
  get "list_items/products"
  
  get "backdoor/backdoor"
  post "backdoor/backdoor"
  get "product/product"
  get "search/search"
  root "welcome#index"
  
  #for pretty auto_cms capabilities
  
  Cms.all.each {|cms_page|
    get "/#{cms_page.page_name}", to: ("cms_output#output"), as:"cms_#{cms_page.page_name}"
  }
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)
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
