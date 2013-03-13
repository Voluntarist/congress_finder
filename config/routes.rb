CongressfinderAlpha::Application.routes.draw do

  root :to => 'home#index'

  post '/senator' => 'senator#show'

  get '/senator/result' => 'senator#result'

  post '/senator/result' => 'senator#result'

  # post '/congress' => 'congress#show'

  # get '/congress/result' => 'congress#result'

  # post '/congress/result' => 'congress#result'

  #get 'Luke_Rep_HomePage.jpg'

end

