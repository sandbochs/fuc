class WhiteCardsController < ApplicationController
  respond_to :json

  def index
    respond_with WhiteCard.all
  end
end