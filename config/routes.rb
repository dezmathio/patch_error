PatchError::Application.routes.draw do
  root :to => "home#index"
  patch '/', :to => 'home#update'
end
