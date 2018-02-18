class CardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_card, only: [:show, :update] 
  before_action :set_resource, only: [:index] 
  
  # GET /cards
  def index
    render json: @cards
  end

  # POST /cards
  def create
  end

  # GET /cards/id/
  def show
    render json: @card    
  end

  # PATCH /cards/id
  def update
  end

  private
  def set_card
    @card = Card.find(params[:id])
  end
  
  def set_resource
    @cards =
      if params[:user_id]
        User.find(params[:user_id]).cards
      else
        Card.all
      end
  end

  def card_params
    params.require(:card).permit(:user_id, :title, :body, :genre, :tag)
  end
end