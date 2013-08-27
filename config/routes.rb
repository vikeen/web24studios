Web24studios::Application.routes.draw do
  root to: 'static_pages#home'

  #resources :users

  match '/services' => 'static_pages#services'
  match '/services/web_application_development'    => 'static_pages#services_web_application_development'
  match '/services/website_design_and_development' => 'static_pages#services_website_design_and_development'
  match '/services/usability_and_user_interface'   => 'static_pages#services_usability_and_user_interface'
  match '/services/quality_assurance_and_testing'  => 'static_pages#services_quality_assurance_and_testing'
  match '/services/maintenance_and_support'        => 'static_pages#services_maintenance_and_support'

  match '/company/overview'              => 'static_pages#company_overview'
  match '/company/business_philosophies' => 'static_pages#company_business_philosophies'
  match '/company/why_us'                => 'static_pages#company_why_us'

  resources :projects
  match '/portfolio' => 'projects#index'

  match '/contact'      => 'static_pages#contact_form'
  match '/contact/info' => 'static_pages#contact_info'

  resources :posts
  match 'blog' => 'posts#index'

  resources :sessions
  get '/admin'    => 'sessions#new'
  get '/log_out'  => 'sessions#destroy'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
