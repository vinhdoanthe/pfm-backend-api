require 'test_helper'

class Config::CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @config_category = config_categories(:one)
  end

  test "should get index" do
    get config_categories_url, as: :json
    assert_response :success
  end

  test "should create config_category" do
    assert_difference('Config::Category.count') do
      post config_categories_url, params: { config_category: { category_type: @config_category.category_type, name: @config_category.name } }, as: :json
    end

    assert_response 201
  end

  test "should show config_category" do
    get config_category_url(@config_category), as: :json
    assert_response :success
  end

  test "should update config_category" do
    patch config_category_url(@config_category), params: { config_category: { category_type: @config_category.category_type, name: @config_category.name } }, as: :json
    assert_response 200
  end

  test "should destroy config_category" do
    assert_difference('Config::Category.count', -1) do
      delete config_category_url(@config_category), as: :json
    end

    assert_response 204
  end
end
