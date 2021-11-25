Rails.application.routes.draw do
  # a route is going to be the http request and do crud actions in the browser 
  # and lead somewhere in the controller 
  # combo url + http request 

  # WAYS TO DO ROUTES
  # root 'controller#action' - this will change your homepage to the url pattern 
  # root 'static#home'
  # resources :controller - generate all the routes and actions for a controller
  # resources :contacts
  # - with relationships with models you are going to embed two levels deep 
  # resources :contacts do
  #   resources :notes
  # end

  # bad 
  # resources :contacts do
  #   resources :notes do
  #     resources :comments
  #   end
  # end

  # best practice
  # resources :contacts do
  #   resources :notes
  # end

  # resources :notes do
  #   resources :comments
  # end
  # cubstom routes - doing all the routes by hand 
  # httpverb 'pattern', to: 'controller#action'
  # get   - will be your Read
  # post  - will be your Create
  # put / patch   - will be your Update
  # delete  - will be your destroy 
  # get '/whateverURLpattern'
  # example of custom pattern
  # with our previous project it would be
  # get '/contacts', to:'contacts#index'
  # pass in a in for the route to work 
  # subs/2
  root 'subs#index'
  # good way to do route (url pattern) 2 levels deep
  resources :subs do 
    resources :topics
  end

  # bad way
  # resources :subs do 
  #   resources :topics do
  #     resources :comments
  #   end
  # end
  # resources :topics, only:[:index, :new] do
  #   resources :comments 
  # end
  resources :topics, except:[:index, :new, :create, :edit, :show, :update, :destroy] do
    resources :comments 
  end
end
