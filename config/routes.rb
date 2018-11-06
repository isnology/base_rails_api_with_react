Rails.application.routes.draw do
  
  devise_for :users, path_prefix: 'api', defaults: { format: :json }
  namespace :api, defaults: { format: :json } do
    
    namespace :v1 do
    
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
