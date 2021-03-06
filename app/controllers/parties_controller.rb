class PartiesController < ApplicationController

skip_before_action :authenticate_user!, only: [:show, :index]

before_action :set_party, only: [:show, :edit, :destroy]

  def index
    @parties = Party.all
    @parties = Party.where.not(latitude: nil, longitude: nil)

     @hash = Gmaps4rails.build_markers(@parties) do |party, marker|
      marker.lat party.latitude
      marker.lng party.longitude
     end
  end

  def show
    @booking = Booking.new
    @user_booking = Booking.where(user: current_user, party: @party)
    @party_coordinates = { lat: @party.latitude, lng: @party.longitude }
    @hash = Gmaps4rails.build_markers(@party) do |party, marker|
      marker.lat party.latitude
      marker.lng party.longitude
    end
  end

  def new
    @party= Party.new
  end

  def create
    @party= Party.new(party_params)
    @party.update(user_id: current_user.id)
    if @party.save
     redirect_to party_path(@party)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @party.update(party_params)
    redirect_to party_path(@party)
  end

  def destroy
    @user = @party.user
    @party.destroy
     redirect_to user_path(@user)
  end

  private
  def set_party
    @party = Party.find(params[:id])
  end

  def party_params
    params.require(:party).permit(:title, :capacity, :music_type, :price, :occurs_at, :address, :photo_cache, :photo)
  end

end
