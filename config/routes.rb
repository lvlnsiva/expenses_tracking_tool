ExpenseTrackTool::Application.routes.draw do
  # authenticated :user do
    # root :to => "devise/registrations#new"
  # end
  devise_for :users, :controller => { sessions: 'devise/sessions'}
  root :to => "expenses#index"

  
  #get "sign_up" => "users#new", :as => "sign_up"
  #post "users_create" => "users#create", :as => "users_create"
  #get "expenses_new" => "expenses#new", :as => "expenses_new"
  #post "expenses_create" => "expenses#create", :as => "expenses_create"
  #get "log_in" => "sessions#new", :as => "log_in"
  #post "log_in" => "sessions#create", :as => "login"
  get "category_new" => "categories#new", :as => "category_new"
  post "category_create" => "categories#create", :as => "category_create"
  resources :reports do
    collection do
      get :index
      get :result
    end
  end
 
    resources :categories do
      resources :expenses
    end
    resources :expenses
    
  
end



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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'