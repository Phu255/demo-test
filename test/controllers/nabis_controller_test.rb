require 'test_helper'

class NabisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nabi = nabis(:one)
  end

  test "should get index" do
    get nabis_url
    assert_response :success
  end

  test "should get new" do
    get new_nabi_url
    assert_response :success
  end

  test "should create nabi" do
    assert_difference('Nabi.count') do
      post nabis_url, params: { nabi: { description: @nabi.description, name: @nabi.name, price: @nabi.price } }
    end

    assert_redirected_to nabi_url(Nabi.last)
  end

  test "should show nabi" do
    get nabi_url(@nabi)
    assert_response :success
  end

  test "should get edit" do
    get edit_nabi_url(@nabi)
    assert_response :success
  end

  test "should update nabi" do
    patch nabi_url(@nabi), params: { nabi: { description: @nabi.description, name: @nabi.name, price: @nabi.price } }
    assert_redirected_to nabi_url(@nabi)
  end

  test "should destroy nabi" do
    assert_difference('Nabi.count', -1) do
      delete nabi_url(@nabi)
    end

    assert_redirected_to nabis_url
  end
end
