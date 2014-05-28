class WhiteCardsController < ApplicationController
  respond_to :json

  def index
    respond_to do |format|
      format.html { render json: WhiteCard.all }
      format.json { render json:  WhiteCard.all }
    end
  end
end
