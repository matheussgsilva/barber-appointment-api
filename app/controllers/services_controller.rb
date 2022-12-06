class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def create
    service = Service.new(services_params)

    if service.save
      render json: {}, status: 201
    else
      render json: { error: service.errors.full_messages.first }, status: 422
    end
  end

  def update
    service = Service.find(params[:id])
    service.attributes = services_params
    if service.save
      render json: {}, status: 200
    else
      render json: { error: service.errors.full_messages.first }, status: 422
    end
  end

  def destroy
    service = Service.find(params[:id])
    if service.destroy
      render json: {}, status: 200
    else
      render json: { error: service.errors.full_messages.first }, status: 422
    end
  end

  private

  def services_params
    params.permit(:name, :price, :duration)
  end
  
end