require 'test_helper'

class Admin::RubyNameMethodsControllerTest < ActionController::TestCase
  setup do
    @admin_ruby_name_method = admin_ruby_name_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ruby_name_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ruby_name_method" do
    assert_difference('Admin::RubyNameMethod.count') do
      post :create, admin_ruby_name_method: { name_method: @admin_ruby_name_method.name_method, ruby_name_class_id: @admin_ruby_name_method.ruby_name_class_id, short_method_description: @admin_ruby_name_method.short_method_description }
    end

    assert_redirected_to admin_ruby_name_method_path(assigns(:admin_ruby_name_method))
  end

  test "should show admin_ruby_name_method" do
    get :show, id: @admin_ruby_name_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ruby_name_method
    assert_response :success
  end

  test "should update admin_ruby_name_method" do
    patch :update, id: @admin_ruby_name_method, admin_ruby_name_method: { name_method: @admin_ruby_name_method.name_method, ruby_name_class_id: @admin_ruby_name_method.ruby_name_class_id, short_method_description: @admin_ruby_name_method.short_method_description }
    assert_redirected_to admin_ruby_name_method_path(assigns(:admin_ruby_name_method))
  end

  test "should destroy admin_ruby_name_method" do
    assert_difference('Admin::RubyNameMethod.count', -1) do
      delete :destroy, id: @admin_ruby_name_method
    end

    assert_redirected_to admin_ruby_name_methods_path
  end
end
