require 'test_helper'

class ReportDatesControllerTest < ActionController::TestCase
  setup do
    @report_date = report_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_date" do
    assert_difference('ReportDate.count') do
      post :create, report_date: { date: @report_date.date }
    end

    assert_redirected_to report_date_path(assigns(:report_date))
  end

  test "should show report_date" do
    get :show, id: @report_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report_date
    assert_response :success
  end

  test "should update report_date" do
    patch :update, id: @report_date, report_date: { date: @report_date.date }
    assert_redirected_to report_date_path(assigns(:report_date))
  end

  test "should destroy report_date" do
    assert_difference('ReportDate.count', -1) do
      delete :destroy, id: @report_date
    end

    assert_redirected_to report_dates_path
  end
end
