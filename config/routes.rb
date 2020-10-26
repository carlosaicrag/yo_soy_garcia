Rails.application.routes.draw do
  namespace :api , defaults: { format: :json } do
    resources :family_members, only: [:show] do 
      collection do 
        get :find_all_family_trees
      end
    end
    
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'
end
