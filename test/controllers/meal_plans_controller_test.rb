require 'test_helper'

class MealPlansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get meal_plans_new_url
    assert_response :success
  end

  test "should get edit" do
    get meal_plans_edit_url
    assert_response :success
  end

end
