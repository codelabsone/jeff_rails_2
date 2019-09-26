require 'test_helper'

class FiltrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filtration = filtrations(:one)
  end

  test "should get index" do
    get filtrations_url
    assert_response :success
  end

  test "should get new" do
    get new_filtration_url
    assert_response :success
  end

  test "should create filtration" do
    assert_difference('Filtration.count') do
      post filtrations_url, params: { filtration: { descritpion: @filtration.descritpion, name: @filtration.name } }
    end

    assert_redirected_to filtration_url(Filtration.last)
  end

  test "should show filtration" do
    get filtration_url(@filtration)
    assert_response :success
  end

  test "should get edit" do
    get edit_filtration_url(@filtration)
    assert_response :success
  end

  test "should update filtration" do
    patch filtration_url(@filtration), params: { filtration: { descritpion: @filtration.descritpion, name: @filtration.name } }
    assert_redirected_to filtration_url(@filtration)
  end

  test "should destroy filtration" do
    assert_difference('Filtration.count', -1) do
      delete filtration_url(@filtration)
    end

    assert_redirected_to filtrations_url
  end
end
