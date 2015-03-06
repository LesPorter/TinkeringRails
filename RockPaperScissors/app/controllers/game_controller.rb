class GameController < ApplicationController
  def home
    @user_weapon = params[:user_weapon]
    @user_score = RockPaperScissors::Application.config.user_score
    @computer_score = RockPaperScissors::Application.config.computer_score
    
    # Computer selects a weapon
    weapons = ["rock", "paper", "scissors"]
    @computer_weapon = weapons.sample
    
    # Determine winner
    @results = @user_weapon.to_s + @computer_weapon.to_s
    case @results
      when 'rockscissors'
        # User wins
        @verdict = "You WIN!"
        @user_score +=1
      
      when 'paperrock'
        # User wins
        @verdict = "You WIN!"
        @user_score +=1
      
      when 'scissorspaper'
        # User wins
        @verdict = "You WIN!"
        @user_score +=1
      
      when 'rockpaper'
        # Computer wins
        @verdict = "You LOSE!"
        @computer_score +=1
      
      when 'paperscissors'
        # Computer wins
        @verdict = "You LOSE!"
        @computer_score +=1
      
      when 'scissorsrock'
        # Computer wins
        @verdict = "You LOSE!"
        @computer_score +=1
      
      else
        # Tie
        @verdict = "TIE!"
    end
    
    # Update message to the user
    if @user_score < 5 && @computer_score < 5
      # Play until one player hits 5
      if @user_score > @computer_score
        message = @verdict + " You're leading " + @user_score.to_s + "-" + @computer_score.to_s + "."
      elsif @user_score < @computer_score
        message = @verdict + " You're currently trailing " + @user_score.to_s + "-" + @computer_score.to_s + "."
      else
        message = @verdict + " We're all tied at " + @user_score.to_s + "-" + @computer_score.to_s + "."
      end
    else
      # Game over
      message = "Thanks for playing! You had " + @user_score.to_s + ". The computer had " + @computer_score.to_s + "."
      @user_score = 0
      @computer_score = 0
    end
    
    # Update session variables
    RockPaperScissors::Application.config.user_score = @user_score
    RockPaperScissors::Application.config.computer_score = @computer_score
    RockPaperScissors::Application.config.message = message
    
  end
end
