require 'test_helper'

class ReportContentsControllerTest < ActionController::TestCase
  setup do
    @report_content = report_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:report_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report_content" do
    assert_difference('ReportContent.count') do
      post :create, report_content: { content: @report_content.content }
    end

    assert_redirected_to report_content_path(assigns(:report_content))
  end

  test "should show report_content" do
    get :show, id: @report_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report_content
    assert_response :success
  end

  test "should update report_content" do
    patch :update, id: @report_content, report_content: { content: @report_content.content }
    assert_redirected_to report_content_path(assigns(:report_content))
  end

  test "should destroy report_content" do
    assert_difference('ReportContent.count', -1) do
      delete :destroy, id: @report_content
    end

    assert_redirected_to report_contents_path
  end
end
