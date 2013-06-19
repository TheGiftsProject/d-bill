DBill::Application.routes.draw do

  resources :bills, :only => [:show, :create] do
    resources :claims, :only => [:create, :update]
  end

  root :to => 'application#root'
end
