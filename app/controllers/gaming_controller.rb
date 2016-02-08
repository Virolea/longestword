require 'game_logic'
class GamingController < ApplicationController
  def game
    gameController = GamingController.new()
    @grid = generate_grid(10)
  end

  def score
    @grid = JSON.parse params[:grid]
    @start_time = Time.parse(params[:start_time])
    @end_time = Time.now
    @attempt = params[:attempt]
    @result = GameLogic.run_game(@attempt, @grid, @start_time, @end_time)
  end
end
