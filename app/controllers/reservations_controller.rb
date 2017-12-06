class ReservationsController < ApplicationController

  before_action :ensure_logged_in

  def show
    @reservation = Reservation.all
  end

  def create
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation.time = params[:reservation][:time]
    @reservation.size = params[:reservation][:size]
    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.user_id = current_user.id

    if @reservation.save
      flash[:success] = "Reservation made for #{@reservation.restaurant.name} at #{@reservation.time}"
      redirect_to root_url
    else
      flash[:alert] = "Sorry, there were issues making your reservation."
      render 'new'
    end

  end

  def edit

    @reservation.time = params[:reservation][:time]
    @reservation.size = params[:reservation][:size]

    if @reservation.save
      redirect_to root_url
    else
      render :edit
    end
  end

  def update

  end

  def new
    @reservation = Reservation.new

    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def destroy

  end



end
