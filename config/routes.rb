Rails.application.routes.draw do

    get "/prediction/:date", to: "prediction#show", param: :date
    # match '/predictions/:date' => 'prediction#get_prediction', :via => :get

 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
