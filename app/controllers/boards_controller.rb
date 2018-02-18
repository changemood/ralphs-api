class BoardsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_board, only: [:show, :update, :destroy]
  before_action :set_boards, only: [:index]
  before_action :set_user, only: [:create]

  # GET /boards
  def index
    render json: @boards
  end

  # GET /boards/1
  def show
    render json: @board
  end

  # POST /boards
  def create
    @board = @user.boards.new(board_params)

    if @board.save
      render json: @board, status: :created, location: @board
    else
      render json: @board.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /boards/1
  def update
    if @board.update(board_params)
      render json: @board
    else
      render json: @board.errors, status: :unprocessable_entity
    end
  end

  # DELETE /boards/1
  def destroy
    # update delete_at instead of destroy
    if @board.update({delete_at: Time.now})
      render json: @board
    else
      render json: @board.errors, status: :unprocessable_entity
    end
  end

  private
    def set_board
      @board = Board.find(params[:id])
    end
    
    def set_boards
      @boards =
        if params[:user_id]
          User.find(params[:user_id]).boards
        else
          Board.all
        end
    end

    def set_user
      @user = User.find(params[:user_id])
    end
    
    # Only allow a trusted parameter "white list" through.
    def board_params
      params.require(:board).permit(:user_id, :name)
    end
end
