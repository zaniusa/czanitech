Czanitech::Application.routes.draw do
  resources :myimages do
    get 'show_hidden', :on => :collection
    get 'show_all', :on => :collection
  end
# to add a new method into a controller
# As the example above, add the get into resources as collection,
# because it will bring more than one record. If it is just on, than
# use member.
# 1. Add get 'show_hidden', :on => :collection 
# 2. Go to controller and create the method as below:
# def show_hidden
#   if current_user.admin?
#     @myimages = Myimage.where(image_hidden: [true, nil])
#   else
#     @myimages = current_user.myimages.where(image_hidden: [true, nil])
#   end
#   render 'index'
# end
# 3. Go to view and create the button as below:
# Hidden is the button label, show_hidden is the method name, and
# my_images with "s" at the end, is the path for the records.
# To use parameter, enter show_hidden_myimage_path(:id), and the method
# should receive the parameter like: def show_hidden(id)
# <%= link_to 'Hidden', show_hidden_myimages_path, class: "btn btn-default" %>

  resources :pymtreceiveds

  resources :pymts

  get "price/index"
  
  resources :projstatuses

  resources :customerchats

  get "allusers", to: 'users#index', as: :allusers
  get "edituser", to: "users#edit", as: :edituser

  resources :movielinks

  resources :sendmessages
  get 'send', to: 'sendmessages#new', as: :send
  get "about/index"
  get "home/index"
  
  resources :scripts

  devise_for :users
  
  devise_scope :user do
      get 'register', to: 'devise/registrations#new', as: :register
      get 'login', to: 'devise/sessions#new', as: :login
      get 'logout', to: 'devise/sessions#destroy', as: :logout
      get 'edit', to: 'devise/registrations#edit', as: :edit
  end

  root :to => "home#index"
  
  
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
