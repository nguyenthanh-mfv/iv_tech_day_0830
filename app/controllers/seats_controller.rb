class SeatsController < ApplicationController
  def index
    from = params[:from] || DateTime.current.beginning_of_day + 8.hours

    @seats = Seat.order(number: :asc)
    @user_seats = UserSeat.where(from: from..).index_by(&:seat_id)
  end

  def create
  end

  def update
  end

  def delete
  end
end
