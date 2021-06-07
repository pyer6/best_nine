class BestNinesController < ApplicationController
  before_action :require_user_logged_in, only: [:new, :create, :destroy]

  def index
    @best_nines = BestNine.paginate(page: params[:page], per_page: 2)
    @players = Player.all
  end

  def show
    @best_nine = BestNine.find(params[:id])
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
    
    field_player = params[:best_nine].values[1..-5]
    pitcher = params[:best_nine].values[-4..-2]

    position = field_player.each_slice(2).map(&:first) # {|n| n.first}
    player = field_player.each_slice(2).map(&:last).push(pitcher)
    player.flatten!

    if ((position.count - position.uniq.count) != 0 || (player.count - player.uniq.count) != 0)
      flash[:danger] = "ポジションまたは選手が重複しています。"
      render :new
    elsif @bestnine.save
      flash[:success] = "ベストナインを作成しました。"
      redirect_to root_url
    else
      flash[:danger] = "保存に失敗しました。"
      render :new
    end
  end

  def destroy
    BestNine.find(params[:id]).destroy
    flash[:success] = "削除しました。"
    redirect_to root_url
  end



  private
    def best_nine_params
      params.require(:best_nine).permit(:title, :one_position, :one_name, :two_position, :two_name, :three_position, :three_name, :four_position, :four_name,
                                        :five_position, :five_name, :six_position, :six_name, :seven_position, :seven_name, :eight_position, :eight_name,
                                        :nine_position, :nine_name, :starting, :relief, :closer, :user_id)
    end

    def require_user_logged_in
      unless logged_in?
        redirect_to root_url
      end
    end
end