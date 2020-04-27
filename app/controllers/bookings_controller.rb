class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @art = Art.find(params[:art_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @art = Art.find(params[:art_id])
    @booking.art_id = @art
    @booking.user_id = current_user.id
    @booking.status = "Pending"
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :start_hour, :end_hour, :total_price)
  end
end
