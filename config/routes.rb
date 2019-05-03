Rails.application.routes.draw do
  namespace :api do
    get '/guessing_game' => 'params_games#guess_number'
    get '/show_name' => 'params_games#display_name'
  end
end
