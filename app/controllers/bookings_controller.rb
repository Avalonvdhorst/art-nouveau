class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @art = Art.find(params[:art_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @art = Art.find(params[:art_id])
    @booking.art = @art
    @booking.user = current_user
    @booking.status = "Pending"
    if @booking.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Accepted"
    @booking.save

    redirect_to profile_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "Declined"
    @booking.save

    redirect_to profile_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :start_hour, :end_hour)
  end
end
