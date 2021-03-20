class BestNinesController < ApplicationController
  def index
    @bestnines = BestNine.all
    @players = Player.all
  end

  def new
    @bestnine = BestNine.new
    @players_fielder = Player.where(field: "F")
    @players_pitcher = Player.where(field: "P")
  end

  def create
    @bestnine = BestNine.new(best_nine_params)
    @players_fielder = Player.where(field: "F")
    @players_pitcher = Player.where(field: "P")

    # ポジション/選手に重複があるかの確認
    best_nine_position_player = params[:best_nine].values[1..-4]
    pitcher = params[:best_nine].values[-3..-1]
  
    position = best_nine_position_player.each_slice(2).map(&:first).push(pitcher) # {|n| n.first}
    position.flatten!
    player = best_nine_position_player.each_slice(2).map(&:last)

    if ((position.count - position.uniq.count) != 0 || (player.count - player.uniq.count) != 0)
      flash[:danger] = "ポジションまたは選手が重複しています。"
      render :new
    elseif @bestnine.save
      flash[:success] = "ベストナインを作成しました。"
      redirect_to root_path
    else
      flash[:danger] = "保存に失敗しました。"
      render :new
    end
  end


  private
    def best_nine_params
      params.require(:best_nine).permit(:title, :one_position, :one_name, :two_position, :two_name, :three_position, :three_name, :four_position, :four_name,
                                        :five_position, :five_name, :six_position, :six_name, :seven_position, :seven_name, :eight_position, :eight_name,
                                        :nine_position, :nine_name, :starting, :relief, :closer)
    end
end