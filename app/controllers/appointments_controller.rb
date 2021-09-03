class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_schedule
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET schedules/1/appointments
  def index
    @appointments = @schedule.appointments
  end

  # GET schedules/1/appointments/1
  def show
  end

  # GET schedules/1/appointments/new
  def new
    @appointment = @schedule.appointments.build
  end

  # GET schedules/1/appointments/1/edit
  def edit
  end

  # POST schedules/1/appointments
  def create
    @appointment = @schedule.appointments.build(appointment_params)

    if @appointment.save
      redirect_to([@appointment.schedule, @appointment], notice: 'Appointment was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT schedules/1/appointments/1
  def update
    if @appointment.update_attributes(appointment_params)
      redirect_to([@appointment.schedule, @appointment], notice: 'Appointment was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE schedules/1/appointments/1
  def destroy
    @appointment.destroy

    redirect_to schedule_appointments_url(@schedule)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:schedule_id])
    end

    def set_appointment
      @appointment = @schedule.appointments.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appointment_params
      params.require(:appointment).permit(:title, :start, :end, :duration, :description, :user_id, :coach_id, :schedule_id)
    end
end
