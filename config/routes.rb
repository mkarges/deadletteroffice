Mail::Application.routes.draw do
  resources :emails
  
  root :to => 'emails#new'

end
