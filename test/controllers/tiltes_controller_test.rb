require "test_helper"

class TiltesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tilte = tiltes(:one)
  end

  test "should get index" do
    get tiltes_url
    assert_response :success
  end

  test "should get new" do
    get new_tilte_url
    assert_response :success
  end

  test "should create tilte" do
    assert_difference('Tilte.count') do
      post tiltes_url, params: { tilte: { body: @tilte.body } }
    end

    assert_redirected_to tilte_url(Tilte.last)
  end

  test "should show tilte" do
    get tilte_url(@tilte)
    assert_response :success
  end

  test "should get edit" do
    get edit_tilte_url(@tilte)
    assert_response :success
  end

  test "should update tilte" do
    patch tilte_url(@tilte), params: { tilte: { body: @tilte.body } }
    assert_redirected_to tilte_url(@tilte)
  end

  test "should destroy tilte" do
    assert_difference('Tilte.count', -1) do
      delete tilte_url(@tilte)
    end

    assert_redirected_to tiltes_url
  end
end
