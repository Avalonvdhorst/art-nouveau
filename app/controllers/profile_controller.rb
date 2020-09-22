class ProfileController < ApplicationController
  def show
    @user = current_user
    @artworks = @user.arts
    @bookings = @user.bookings
  end
end
