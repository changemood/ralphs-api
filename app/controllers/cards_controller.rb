class CardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_card, only: [:show, :update, :destroy] 
  before_action :set_cards, only: [:index] 
  before_action :set_user, only: [:create]

  # GET /cards
  def index
    render json: @cards
  end

  # POST /cards
  def create
    @card = @user.cards.new(card_params)

    if @card.save
      format.json { render :show, status: :created, location: @card }
    else
      format.json { render json: @card.errors, status: :unprocessable_entity }
    end
  end

  # GET /cards/id/
  def show
    render json: @card    
  end

  # PATCH/PUT /cards/1
  def update
    if @card.update(card_params)
      render json: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards/1
  def destroy
    # update delete_at instead of destroy
    if @card.update({delete_at: Time.now})
      render json: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  private
  def set_card
    @card = Card.find(params[:id])
  end
  
  def set_cards
    @cards =
      if params[:board_id]
        Board.find(params[:board_id]).cards
      elsif params[:user_id]
        User.find(params[:user_id]).cards
      else
        Card.all
      end
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def card_params
    params.require(:card).permit(:user_id, :board_id, :title, :body, :interval)
  end
end