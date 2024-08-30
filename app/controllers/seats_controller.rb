class SeatsController < ApplicationController
  def index
    from = params[:from] || DateTime.current.beginning_of_day + 8.hours

    @seats = Seat.order(number: :asc)
    @user_seats = UserSeat.where(from: from..).index_by(&:seat_id)
  end

  def show
    @seat = Seat.find(params[:id])
  end

  def create
  end

  def update
  end

  def delete
  end

  def update_availability
    @seat = Seat.find(params[:id])
    @seat.update(available: !@seat.available)

    flash[:notice] = 'Seat availability updated'
    redirect_to seat_path(@seat)
  end
end
