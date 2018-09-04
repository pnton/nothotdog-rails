Rails.application.routes.draw do
  root to: 'home#index'

  namespace :api do 
    namespace :v1 do 
      resources :nothotdog
      post '/nothotdog/is_hot_dog', to: 'nothotdog#is_hot_dog'
    end 
  end

end
