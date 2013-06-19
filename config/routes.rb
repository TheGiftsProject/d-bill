DBill::Application.routes.draw do

  resources :bills, :only => [:show, :create] do
    get :show, :as => 'join', :on => :collection
    resources :claims, :only => [:create, :update]
  end

  root :to => 'application#root'
end
