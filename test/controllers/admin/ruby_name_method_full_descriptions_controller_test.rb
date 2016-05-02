require 'test_helper'

class Admin::RubyNameMethodFullDescriptionsControllerTest < ActionController::TestCase
  setup do
    @admin_ruby_name_method_full_description = admin_ruby_name_method_full_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ruby_name_method_full_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ruby_name_method_full_description" do
    assert_difference('Admin::RubyNameMethodFullDescription.count') do
      post :create, admin_ruby_name_method_full_description: { full_method_description: @admin_ruby_name_method_full_description.full_method_description, label_code: @admin_ruby_name_method_full_description.label_code, label_description: @admin_ruby_name_method_full_description.label_description, label_result: @admin_ruby_name_method_full_description.label_result, method_code: @admin_ruby_name_method_full_description.method_code, num_view: @admin_ruby_name_method_full_description.num_view, result_code: @admin_ruby_name_method_full_description.result_code, ruby_name_method_id: @admin_ruby_name_method_full_description.ruby_name_method_id }
    end

    assert_redirected_to admin_ruby_name_method_full_description_path(assigns(:admin_ruby_name_method_full_description))
  end

  test "should show admin_ruby_name_method_full_description" do
    get :show, id: @admin_ruby_name_method_full_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ruby_name_method_full_description
    assert_response :success
  end

  test "should update admin_ruby_name_method_full_description" do
    patch :update, id: @admin_ruby_name_method_full_description, admin_ruby_name_method_full_description: { full_method_description: @admin_ruby_name_method_full_description.full_method_description, label_code: @admin_ruby_name_method_full_description.label_code, label_description: @admin_ruby_name_method_full_description.label_description, label_result: @admin_ruby_name_method_full_description.label_result, method_code: @admin_ruby_name_method_full_description.method_code, num_view: @admin_ruby_name_method_full_description.num_view, result_code: @admin_ruby_name_method_full_description.result_code, ruby_name_method_id: @admin_ruby_name_method_full_description.ruby_name_method_id }
    assert_redirected_to admin_ruby_name_method_full_description_path(assigns(:admin_ruby_name_method_full_description))
  end

  test "should destroy admin_ruby_name_method_full_description" do
    assert_difference('Admin::RubyNameMethodFullDescription.count', -1) do
      delete :destroy, id: @admin_ruby_name_method_full_description
    end

    assert_redirected_to admin_ruby_name_method_full_descriptions_path
  end
end
