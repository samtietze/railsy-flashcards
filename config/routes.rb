Rails.application.routes.draw do

  resources :decks, only: [:index, :show] do
    resources :games, only: [:create, :show]
    resources :cards, only: [:show]
  end

  # get '/decks' => 'decks#index'
  # get '/decks/:id' => 'decks#show'#, as: 'deck'

  # post '/decks/:deck_id/games' => 'games#create'#, as: 'deck_games'
  # get '/decks/:deck_id/games/:id' => 'games#show'

  # get '/decks/:deck_id/cards/:id' => 'cards#show'

  resources :users, only: [:new, :create, :show]

  # get '/register' => 'users#new'
  # post '/users' => 'users#create'
  # get '/users/:id' => 'users#show'#, as: 'user'

  # resource :session, only: [:new, :destroy]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # post '/decks/:deck_id/cards/:id/guesses' => 'guesses#create'

  patch 'guesses/:id' => 'guesses#update', as: 'guess'

end
