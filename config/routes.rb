Rails.application.routes.draw do
  namespace :api do
    get '/query_params_url' => 'params_examples#query_params_action'
    get '/segment_params_url/:this_is_a_variable' => 'params_examples#segment_params_action'
    get '/segment_guess_url/:user_guess' => 'params_examples#segment_params_guess_action'
    post '/body_params_url' => 'params_examples#form_params_action'

  end
end
