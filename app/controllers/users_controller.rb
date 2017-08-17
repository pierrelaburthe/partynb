class UsersController < ApplicationController

 # skip_before_action :authenticate_user!, only: :show

 before_action :set_users, only: [:show, :edit]

 def new
    @user = User.new
 end

 def create
  @user = User.new(user_params)
  if @user.save
    redirect user_path(@user)
    UsertMailer.creation_confirmation(@user).deliver_now
  end
    render :new
 end

 def show
  @bookings = current_user.bookings
 end

 def edit
 end

 def update
   @user.update(user_params)
   if @user.save
    redirect user_path(@user)
  end
    render :new
 end

 private

 def set_users
   @user = User.find(params[:id])
 end

 def user_params
  params.require(:user).permit(:name, :mail, :password, :age)
 end


end
