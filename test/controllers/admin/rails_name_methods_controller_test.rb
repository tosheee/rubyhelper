require 'test_helper'

class Admin::RailsNameMethodsControllerTest < ActionController::TestCase
  setup do
    @admin_rails_name_method = admin_rails_name_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_rails_name_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_rails_name_method" do
    assert_difference('Admin::RailsNameMethod.count') do
      post :create, admin_rails_name_method: { name_method: @admin_rails_name_method.name_method, rails_name_structure_id: @admin_rails_name_method.rails_name_structure_id, short_description: @admin_rails_name_method.short_description }
    end

    assert_redirected_to admin_rails_name_method_path(assigns(:admin_rails_name_method))
  end

  test "should show admin_rails_name_method" do
    get :show, id: @admin_rails_name_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_rails_name_method
    assert_response :success
  end

  test "should update admin_rails_name_method" do
    patch :update, id: @admin_rails_name_method, admin_rails_name_method: { name_method: @admin_rails_name_method.name_method, rails_name_structure_id: @admin_rails_name_method.rails_name_structure_id, short_description: @admin_rails_name_method.short_description }
    assert_redirected_to admin_rails_name_method_path(assigns(:admin_rails_name_method))
  end

  test "should destroy admin_rails_name_method" do
    assert_difference('Admin::RailsNameMethod.count', -1) do
      delete :destroy, id: @admin_rails_name_method
    end

    assert_redirected_to admin_rails_name_methods_path
  end
end
