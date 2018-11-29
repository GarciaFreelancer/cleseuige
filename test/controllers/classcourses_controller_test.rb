require 'test_helper'

class ClasscoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classcourse = classcourses(:one)
  end

  test "should get index" do
    get classcourses_url
    assert_response :success
  end

  test "should get new" do
    get new_classcourse_url
    assert_response :success
  end

  test "should create classcourse" do
    assert_difference('Classcourse.count') do
      post classcourses_url, params: { classcourse: { available: @classcourse.available, course_id: @classcourse.course_id, description: @classcourse.description, former_id: @classcourse.former_id, name: @classcourse.name, period: @classcourse.period } }
    end

    assert_redirected_to classcourse_url(Classcourse.last)
  end

  test "should show classcourse" do
    get classcourse_url(@classcourse)
    assert_response :success
  end

  test "should get edit" do
    get edit_classcourse_url(@classcourse)
    assert_response :success
  end

  test "should update classcourse" do
    patch classcourse_url(@classcourse), params: { classcourse: { available: @classcourse.available, course_id: @classcourse.course_id, description: @classcourse.description, former_id: @classcourse.former_id, name: @classcourse.name, period: @classcourse.period } }
    assert_redirected_to classcourse_url(@classcourse)
  end

  test "should destroy classcourse" do
    assert_difference('Classcourse.count', -1) do
      delete classcourse_url(@classcourse)
    end

    assert_redirected_to classcourses_url
  end
end
