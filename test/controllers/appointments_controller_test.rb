require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
  setup do
    @schedule = schedules(:one)
    @appointment = appointments(:one)
  end

  test "should get index" do
    get :index, params: { schedule_id: @schedule }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { schedule_id: @schedule }
    assert_response :success
  end

  test "should create appointment" do
    assert_difference('Appointment.count') do
      post :create, params: { schedule_id: @schedule, appointment: @appointment.attributes }
    end

    assert_redirected_to schedule_appointment_path(@schedule, Appointment.last)
  end

  test "should show appointment" do
    get :show, params: { schedule_id: @schedule, id: @appointment }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { schedule_id: @schedule, id: @appointment }
    assert_response :success
  end

  test "should update appointment" do
    put :update, params: { schedule_id: @schedule, id: @appointment, appointment: @appointment.attributes }
    assert_redirected_to schedule_appointment_path(@schedule, Appointment.last)
  end

  test "should destroy appointment" do
    assert_difference('Appointment.count', -1) do
      delete :destroy, params: { schedule_id: @schedule, id: @appointment }
    end

    assert_redirected_to schedule_appointments_path(@schedule)
  end
end
