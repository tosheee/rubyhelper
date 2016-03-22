require 'test_helper'

class DescriptionKeywordsControllerTest < ActionController::TestCase
  setup do
    @description_keyword = description_keywords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:description_keywords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create description_keyword" do
    assert_difference('DescriptionKeyword.count') do
      post :create, description_keyword: { code: @description_keyword.code, description: @description_keyword.description, syntax_keyword_rubies_id: @description_keyword.syntax_keyword_rubies_id }
    end

    assert_redirected_to description_keyword_path(assigns(:description_keyword))
  end

  test "should show description_keyword" do
    get :show, id: @description_keyword
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @description_keyword
    assert_response :success
  end

  test "should update description_keyword" do
    patch :update, id: @description_keyword, description_keyword: { code: @description_keyword.code, description: @description_keyword.description, syntax_keyword_rubies_id: @description_keyword.syntax_keyword_rubies_id }
    assert_redirected_to description_keyword_path(assigns(:description_keyword))
  end

  test "should destroy description_keyword" do
    assert_difference('DescriptionKeyword.count', -1) do
      delete :destroy, id: @description_keyword
    end

    assert_redirected_to description_keywords_path
  end
end
