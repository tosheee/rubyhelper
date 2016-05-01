require 'test_helper'

class Admin::RubySyntaxNameKeywordsControllerTest < ActionController::TestCase
  setup do
    @admin_ruby_syntax_name_keyword = admin_ruby_syntax_name_keywords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_ruby_syntax_name_keywords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_ruby_syntax_name_keyword" do
    assert_difference('Admin::RubySyntaxNameKeyword.count') do
      post :create, admin_ruby_syntax_name_keyword: { admin_ruby_suntax_name_element_id: @admin_ruby_syntax_name_keyword.admin_ruby_suntax_name_element_id, name_keyword: @admin_ruby_syntax_name_keyword.name_keyword, name_keyword_description: @admin_ruby_syntax_name_keyword.name_keyword_description, num_view: @admin_ruby_syntax_name_keyword.num_view }
    end

    assert_redirected_to admin_ruby_syntax_name_keyword_path(assigns(:admin_ruby_syntax_name_keyword))
  end

  test "should show admin_ruby_syntax_name_keyword" do
    get :show, id: @admin_ruby_syntax_name_keyword
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_ruby_syntax_name_keyword
    assert_response :success
  end

  test "should update admin_ruby_syntax_name_keyword" do
    patch :update, id: @admin_ruby_syntax_name_keyword, admin_ruby_syntax_name_keyword: { admin_ruby_suntax_name_element_id: @admin_ruby_syntax_name_keyword.admin_ruby_suntax_name_element_id, name_keyword: @admin_ruby_syntax_name_keyword.name_keyword, name_keyword_description: @admin_ruby_syntax_name_keyword.name_keyword_description, num_view: @admin_ruby_syntax_name_keyword.num_view }
    assert_redirected_to admin_ruby_syntax_name_keyword_path(assigns(:admin_ruby_syntax_name_keyword))
  end

  test "should destroy admin_ruby_syntax_name_keyword" do
    assert_difference('Admin::RubySyntaxNameKeyword.count', -1) do
      delete :destroy, id: @admin_ruby_syntax_name_keyword
    end

    assert_redirected_to admin_ruby_syntax_name_keywords_path
  end
end
