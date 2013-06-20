Tt11::Application.routes.draw do
  resources :forumtalks

  resources :forumthemes

  resources :forumroots

  get "login/add_user"

  get "login/login"

  get "login/logout"

  get "login/index"

  get "login/delete_user"

  get "login/list_users"

  get "export/xls"

  get "forumtalks/del"

  resources :works

  resources :editansws

  resources :editsubjs

  resources :status1s

  resources :office1s


  get "search/index"

  get "sotrud/index"
  get "main/index"
  get "main/about"
  get "main/work"
  get "main/sotrud"
  get "main/album"
  get "main/letter"
  get "desk_subjs/test"
  post "desk_subjs/save_mess"
  post "desk_subjs/new_answ"
  post "desk_subjs/save_answ"
  get "holiday/index"
  post "holiday/days"
  resources :holiday
  resources :desk_subjs

  
  


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
   root :to => "desk_subjs#index"
   match '/' , :controller => "desk_subjs" , :action => "index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id(.:format)))'
end
