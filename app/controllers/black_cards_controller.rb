class BlackCardsController < ApplicationController
  respond_to :json

  def index
    respond_to do |format|
      format.html { render json: BlackCard.all }
      format.json { render json:  BlackCard.all }
    end
  end
end
