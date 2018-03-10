Rails.application.routes.draw do
  get 'show', to: "truck#show"

  namespace :api do
    namespace :v1 do
      post 'gps', to: 'gps_waypoint#add'
    end
  end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
