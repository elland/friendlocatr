Friendlocatr::Application.routes.draw do
  resources :users do
    collection do
      get :nearest_friends
    end
  end

  root :to => 'users#index'
end
