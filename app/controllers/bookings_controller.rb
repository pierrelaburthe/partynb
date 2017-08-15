class BookingsController < ApplicationController


before_action :set_user, only: [:create]
before_action :set_party
before_action :set_booking, only: [:show, :edit, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
    @party = @booking.party
  end

  def new
    @booking= Booking.new
  end

  def create
    @booking= Booking.new(booking_params)
    @booking.party = @party
    @booking.user = @user
    if @booking.save
     redirect_to user_path(@user)
    else
      render "parties/show"
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
     redirect_to bookings_path
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_party
    @party = Party.find(params[:party_id])
  end

  def set_user
    @user = current_user
  end

  def booking_params
    params.require(:booking).permit(:user_id, :party_id, :participant_count, :status)
  end

end

