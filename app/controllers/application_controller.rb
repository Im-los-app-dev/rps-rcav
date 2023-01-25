class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def play_rock
    @comp_move = ["rock", "paper", "scissors"].sample

    @test = @comp_move
    @test2 = "Nothing2"
    @test3 = @comp_move
    @test4 = "Nothing"

    if @comp_move == "rock"
      @outcome = "tied"

      @test = "Stop 1"
    elsif @comp_move == "paper"
      @outcome = "lost"

      @test2 = "stop2"
    else
      @outcome = "won"
    end

    @test4 = @comp_move

    render({ :template => "game_templates/user_rock.html.erb"} )
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    
    render({ :template => "game_templates/user_paper.html.erb"} )
  end



  def play_scissors
    
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    
    render({ :template => "game_templates/user_scissors.html.erb"} )
  end



end
