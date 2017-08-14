class PartiesController < ApplicationController

before_action :set_party, only: [:show, :edit, :destroy]

  def index
    @parties = Party.all
  end

  def show
    @party = Party.new
  end

  def new
    @party= Party.new
  end

  def create
    @party= Party.new(party_params)
    if @party.save
     redirect_to parties_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @party= party.update(party_params)
    redirect_to party_path(@party)
  end

  def destroy
    @party.destroy
     redirect_to parties_path
  end

  private
  def set_party
    @party = Party.find(params[:id])
  end

  def party_params
    params.require(:party).permit(:title, :capacity, :music_type, :price, :occurs_at, :user_id)
  end

end
