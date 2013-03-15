class BlackCardsController < ApplicationController
  respond_to :json

  def index
    respond_with BlackCard.all
  end
end