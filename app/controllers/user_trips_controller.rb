class UserTripsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @trips = @user.trips
  end

  def new

    @user = User.find(params[:user_id])
    @trip = @user.trips.new
  end

  def create
  # require "pry"; binding.pry
    @user = User.find(params[:user_id])
    @trip = Trip.create!(name: params[:name], river: params[:river], grade: params[:grade], starting_date: params[:trip]["starting_date"], end_date: params[:trip][:end_date], section: params[:section], user_id: @user.id)

    redirect_to "/users/#{@user.id}/trips"
  end

  private

  def trip_params
    params.permit(:name, :river, :grade, :user_id, :section, :trip[:starting_date], :trip[:end_date])
  end
end
