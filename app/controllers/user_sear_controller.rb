class UserSearController < ApplicationController
  def create
    @user_seat = UserSeat.new(user_seat_params)

    respond_to do |format|
      if @user_seat.save
        format.json { render :show, status: :created, location: @user_seat }
      else
        format.json { render json: @user_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user_seat = UserSeat.find(params[:id])
    @user_seat.destroy!

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
  def user_seat_params
    params.require(:user_seat).permit(:seat_id, :from, :to)
  end
end
