class PlayersController < ApplicationController
  def new
    @players_fielder = Player.where(field: "F")
    @players_pitcher = Player.where(field: "P")
  end
end
