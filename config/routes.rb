OmniAuthDemo::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.
  match 'auth/:provider/callback' => 'home#index'
  match '/about' => 'home#about'
  

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "home#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
