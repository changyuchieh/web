Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :knowledges, only: [:index]
  resources :educates

  resources :activities do
    member do
        post :participate
      end
  end


  resources :members

end
