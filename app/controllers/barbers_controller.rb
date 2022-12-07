class BarbersController < ApplicationController

  def index
    @barbers = Barber.all
  end

  def show
    @barber = Barber.find(params[:id])
  end

  def create
    barber = Barber.new(barbers_params)

    if barber.save
      render json: {}, status: 201
    else
      render json: { error: barber.errors.full_messages.first }, status: 422
    end
  end

  def update
    barber = Barber.find(params[:id])
    barber.attributes = barbers_params
    if barber.save
      render json: {}, status: 200
    else
      render json: { error: barber.errors.full_messages.first }, status: 422
    end
  end

  def destroy
    barber = Barber.find(params[:id])
    if barber.destroy
      render json: {}, status: 200
    else
      render json: { error: barber.errors.full_messages.first }, status: 422
    end
  end

  private

  def barbers_params
    params.permit(:name, :service_id)
  end
  
end