class Api::ParamsGamesController < ApplicationController
  def guess_number 
    @guess = params[:guess]
    @results = []

    if @guess.to_i > 35 
      @results << "Too high"
    elsif @guess.to_i < 35 
      @results << "Too low"
    elsif @guess.to_i == 35 
      @results << "Correct!" 
    end 

    render 'number.json.jbuilder'
  end 

  def display_name 
    @name = params[:name].upcase
    @message = [] 

    if @name[0] == 'A' 
      @message << "Hey, your name starts with the first letter of the alphabet!"
    end 


    render 'name_view.json.jbuilder'
  end 

end
