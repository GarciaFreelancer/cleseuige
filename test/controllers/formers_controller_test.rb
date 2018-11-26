require 'test_helper'

class FormersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @former = formers(:one)
  end

  test "should get index" do
    get formers_url
    assert_response :success
  end

  test "should get new" do
    get new_former_url
    assert_response :success
  end

  test "should create former" do
    assert_difference('Former.count') do
      post formers_url, params: { former: { description: @former.description, email: @former.email, name: @former.name, phone_number: @former.phone_number } }
    end

    assert_redirected_to former_url(Former.last)
  end

  test "should show former" do
    get former_url(@former)
    assert_response :success
  end

  test "should get edit" do
    get edit_former_url(@former)
    assert_response :success
  end

  test "should update former" do
    patch former_url(@former), params: { former: { description: @former.description, email: @former.email, name: @former.name, phone_number: @former.phone_number } }
    assert_redirected_to former_url(@former)
  end

  test "should destroy former" do
    assert_difference('Former.count', -1) do
      delete former_url(@former)
    end

    assert_redirected_to formers_url
  end
end
