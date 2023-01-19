class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def create
    schedule = Schedule.new(schedules_params)

    if schedule.save
      render json: {}, status: 201
    else
      render json: { error:         schedule.errors.full_messages.first }, status: 422
    end
  end

  def update
    schedule = Schedule.find(params[:id])
    schedule.attributes = schedules_params
    if schedule.save
      render json: {}, status: 200
    else
      render json: { error: schedule.errors.full_messages.first }, status: 422
    end
  end

  def destroy
    schedule = Schedule.find(params[:id])
    if schedule.destroy
      render json: {}, status: 200
    else
      render json: { error: schedule.errors.full_messages.first }, status: 422
    end
  end

  private

  def schedules_params
    params.permit(:barber_id, :service_id, :user_id, :scheduled_at)
  end
  
end