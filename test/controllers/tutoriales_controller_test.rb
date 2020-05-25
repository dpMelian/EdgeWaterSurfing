require 'test_helper'

class TutorialesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutoriale = tutoriales(:one)
  end

  test "should get index" do
    get tutoriales_url
    assert_response :success
  end

  test "should get new" do
    get new_tutoriale_url
    assert_response :success
  end

  test "should create tutoriale" do
    assert_difference('Tutoriale.count') do
      post tutoriales_url, params: { tutoriale: { body: @tutoriale.body, level: @tutoriale.level, title: @tutoriale.title, url: @tutoriale.url } }
    end

    assert_redirected_to tutoriale_url(Tutoriale.last)
  end

  test "should show tutoriale" do
    get tutoriale_url(@tutoriale)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutoriale_url(@tutoriale)
    assert_response :success
  end

  test "should update tutoriale" do
    patch tutoriale_url(@tutoriale), params: { tutoriale: { body: @tutoriale.body, level: @tutoriale.level, title: @tutoriale.title, url: @tutoriale.url } }
    assert_redirected_to tutoriale_url(@tutoriale)
  end

  test "should destroy tutoriale" do
    assert_difference('Tutoriale.count', -1) do
      delete tutoriale_url(@tutoriale)
    end

    assert_redirected_to tutoriales_url
  end
end
