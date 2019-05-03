class Api::ParamsGamesController < ApplicationController

  def guess_number 
    @guess = params[:guess].to_i
    @results = ''

    if @guess > 35 
      @results = "Too high"
    elsif @guess < 35 
      @results = "Too low"
    else 
      @results = "Correct!" 
    end 

    render 'number.json.jbuilder'
  end 


  def display_name 
    @name = params[:name].upcase
    
    if @name[0] == 'A' 
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else 
      @message = "Move along now, git git"
    end 

    render 'name_view.json.jbuilder'
  end 

end
