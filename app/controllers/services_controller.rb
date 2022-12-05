class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def create
    service = services.new(services_params)

    if service.save
      render json: {}, status: 201
    else
      render json: { error: service.errors.full_messages.first }, status: 422
    end
  end

  private

  def services_params
    params.permit( :name, :price, :duration )
  end
  
end