class HighScoresController < ApplicationController
  def create
    @pin = Pin.find(params[:pin_id])
    @high_score = @pin.high_scores.build(high_score_params)
    @high_score.user_id = current_user.id

    if @high_score.save
      flash[:success] = "High score saved!"
      redirect_to pin_path(@high_score.pin)
    else
      flash[:error] = "An error occurred"
      redirect_to pin_path(@high_score.pin)
    end
  end

  private

  def high_score_params
    params.require(:high_score).permit(:score, :pin_id, :user_id)
  end
end
