require 'test_helper'

class ManagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @management = managements(:one)
  end

  test "should get index" do
    get managements_url
    assert_response :success
  end

  test "should get new" do
    get new_management_url
    assert_response :success
  end

  test "should create management" do
    assert_difference('Management.count') do
      post managements_url, params: { management: { in_time: @management.in_time, out_time: @management.out_time, page_error: @management.page_error, page_processed: @management.page_processed, present: @management.present, target: @management.target } }
    end

    assert_redirected_to management_url(Management.last)
  end

  test "should show management" do
    get management_url(@management)
    assert_response :success
  end

  test "should get edit" do
    get edit_management_url(@management)
    assert_response :success
  end

  test "should update management" do
    patch management_url(@management), params: { management: { in_time: @management.in_time, out_time: @management.out_time, page_error: @management.page_error, page_processed: @management.page_processed, present: @management.present, target: @management.target } }
    assert_redirected_to management_url(@management)
  end

  test "should destroy management" do
    assert_difference('Management.count', -1) do
      delete management_url(@management)
    end

    assert_redirected_to managements_url
  end
end