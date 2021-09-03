require 'test_helper'

class SchedulesControllerTest < ActionController::TestCase
  setup do
    @coach = coaches(:one)
    @schedule = schedules(:one)
  end

  test "should get index" do
    get :index, params: { coach_id: @coach }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { coach_id: @coach }
    assert_response :success
  end

  test "should create schedule" do
    assert_difference('Schedule.count') do
      post :create, params: { coach_id: @coach, schedule: @schedule.attributes }
    end

    assert_redirected_to coach_schedule_path(@coach, Schedule.last)
  end

  test "should show schedule" do
    get :show, params: { coach_id: @coach, id: @schedule }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { coach_id: @coach, id: @schedule }
    assert_response :success
  end

  test "should update schedule" do
    put :update, params: { coach_id: @coach, id: @schedule, schedule: @schedule.attributes }
    assert_redirected_to coach_schedule_path(@coach, Schedule.last)
  end

  test "should destroy schedule" do
    assert_difference('Schedule.count', -1) do
      delete :destroy, params: { coach_id: @coach, id: @schedule }
    end

    assert_redirected_to coach_schedules_path(@coach)
  end
end
