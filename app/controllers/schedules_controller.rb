class SchedulesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_coach
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET coaches/1/schedules
  def index
    @schedules = @coach.schedules
  end

  # GET coaches/1/schedules/1
  def show
  end

  # GET coaches/1/schedules/new
  def new
    @schedule = @coach.schedules.build
  end

  # GET coaches/1/schedules/1/edit
  def edit
  end

  # POST coaches/1/schedules
  def create
    @schedule = @coach.schedules.build(schedule_params)

    if @schedule.save
      redirect_to([@schedule.coach, @schedule], notice: 'Schedule was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT coaches/1/schedules/1
  def update
    if @schedule.update_attributes(schedule_params)
      redirect_to([@schedule.coach, @schedule], notice: 'Schedule was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE coaches/1/schedules/1
  def destroy
    @schedule.destroy

    redirect_to coach_schedules_url(@coach)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach
      @coach = Coach.find(params[:coach_id])
    end

    def set_schedule
      @schedule = @coach.schedules.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def schedule_params
      params.require(:schedule).permit(:title, :weekday, :start, :end, :coach_id)
    end
end
