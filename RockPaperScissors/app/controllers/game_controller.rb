class GameController < ApplicationController
  def home
    gameaction = params[:gameaction]
    @user_score = RockPaperScissors::Application.config.user_score
    @computer_score = RockPaperScissors::Application.config.computer_score
    @message = ""

    case gameaction
      when 'rock'
        
    end
    
  end
end
