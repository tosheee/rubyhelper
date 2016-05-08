require 'test_helper'

class Admin::RailsMethodDescriptionsControllerTest < ActionController::TestCase
  setup do
    @admin_rails_method_description = admin_rails_method_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_rails_method_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_rails_method_description" do
    assert_difference('Admin::RailsMethodDescription.count') do
      post :create, admin_rails_method_description: { full_method_description: @admin_rails_method_description.full_method_description, label_code: @admin_rails_method_description.label_code, label_result: @admin_rails_method_description.label_result, lable_description: @admin_rails_method_description.lable_description, method_code: @admin_rails_method_description.method_code, num_view: @admin_rails_method_description.num_view, rails_name_method_id: @admin_rails_method_description.rails_name_method_id, result_code: @admin_rails_method_description.result_code }
    end

    assert_redirected_to admin_rails_method_description_path(assigns(:admin_rails_method_description))
  end

  test "should show admin_rails_method_description" do
    get :show, id: @admin_rails_method_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_rails_method_description
    assert_response :success
  end

  test "should update admin_rails_method_description" do
    patch :update, id: @admin_rails_method_description, admin_rails_method_description: { full_method_description: @admin_rails_method_description.full_method_description, label_code: @admin_rails_method_description.label_code, label_result: @admin_rails_method_description.label_result, lable_description: @admin_rails_method_description.lable_description, method_code: @admin_rails_method_description.method_code, num_view: @admin_rails_method_description.num_view, rails_name_method_id: @admin_rails_method_description.rails_name_method_id, result_code: @admin_rails_method_description.result_code }
    assert_redirected_to admin_rails_method_description_path(assigns(:admin_rails_method_description))
  end

  test "should destroy admin_rails_method_description" do
    assert_difference('Admin::RailsMethodDescription.count', -1) do
      delete :destroy, id: @admin_rails_method_description
    end

    assert_redirected_to admin_rails_method_descriptions_path
  end
end
