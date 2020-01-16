class Api::ParamsExamplesController < ApplicationController
  def query_params_action
    @my_message = params["my_message"]
    @butter = params["other"]
    render 'query_params_view.json.jb'
  end

  def segment_params_action
    @message = params[:this_is_a_variable]
    render "segment_params_view.json.jb"
  end

  def segment_params_guess_action
    @guess = params[:user_guess].to_i
    hidden_number = 42

    if @guess > hidden_number
      @message = "Woah, too high. Go Lower!"
    elsif @guess < hidden_number
      @message = "Come up a bit, guess higher next time."
    else
      @message = "And that number was just right."
    end

    render 'segment_params_guess.json.jb'
  end

  def form_params_action
    @message = params[:message]
    @test = params[:testing]
    render 'form_params_view.json.jb'
  end

end
