Rails.application.routes.draw do
  namespace :api do
    get '/guessing_game' => 'params_games#guess_number'
    get '/show_name' => 'params_games#display_name'
    get '/guessing_game/:number/' => 'params_games#segment_number'
  end
end
