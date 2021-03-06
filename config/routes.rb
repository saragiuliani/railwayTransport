RailwayTransport::Application.routes.draw do

  resources :rail_routes


  resources :railroutes_trains


  resources :rbs
  resources :trs
  resources :trains
  resources :stops
  resources :bookings
  resources :rail_routes
  resources :users


  get "session/new"

  root :to => 'static_pages#home'
  
  get 'home' => 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'choose' => 'bookings#choose'
  get 'temp' => 'railroutes_stops#temp'
  #get 'booking' => 'bookings#new'
  #get 'rail_route' => 'rail_routes#new'


  

  match '/session', to: 'session#create', via: :post
  match '/session/destroy', to: 'session#destroy', via: :delete
  match '/booking', to: 'booking#create', via: :post
  match '/booking/destroy', to: 'booking#destroy', via: :delete
  match '/rail_route', to: 'rail_route#create', via: :post
  match '/rail_route/destroy', to: 'rail_route#destroy', via: :delete

  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'session#new', as: 'login'
  get 'logout', to: 'session#destroy', as: 'logout'

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
