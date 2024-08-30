class UserSeatsController < ApplicationController
  before_action :set_user_seat, only: %i[ show edit update destroy ]

  # GET /user_seats or /user_seats.json
  def index
    @user_seats = UserSeat.all
  end

  # GET /user_seats/1 or /user_seats/1.json
  def show
  end

  # GET /user_seats/new
  def new
    @seat = Seat.find(params[:seat_id])
    @user_seat = UserSeat.new(seat: @seat)
  end

  # GET /user_seats/1/edit
  def edit
  end

  # POST /user_seats or /user_seats.json
  def create
    @user_seat = UserSeat.new(user_seat_params)

    respond_to do |format|
      if @user_seat.save
        format.html { redirect_to user_seat_url(@user_seat), notice: "User seat was successfully created." }
        format.json { render :show, status: :created, location: @user_seat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_seats/1 or /user_seats/1.json
  def update
    respond_to do |format|
      if @user_seat.update(user_seat_params)
        format.html { redirect_to user_seat_url(@user_seat), notice: "User seat was successfully updated." }
        format.json { render :show, status: :ok, location: @user_seat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_seats/1 or /user_seats/1.json
  def destroy
    @user_seat.destroy!

    respond_to do |format|
      format.html { redirect_to user_seats_url, notice: "User seat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_seat
      @user_seat = UserSeat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_seat_params
      params.require(:user_seat).permit(:from, :to)
    end
end
