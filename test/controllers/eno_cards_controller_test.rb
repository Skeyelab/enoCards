require 'test_helper'

class EnoCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eno_card = eno_cards(:one)
  end

  test "should get index" do
    get eno_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_eno_card_url
    assert_response :success
  end

  test "should create eno_card" do
    assert_difference('EnoCard.count') do
      post eno_cards_url, params: { eno_card: { text: @eno_card.text } }
    end

    assert_redirected_to eno_card_url(EnoCard.last)
  end

  test "should show eno_card" do
    get eno_card_url(@eno_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_eno_card_url(@eno_card)
    assert_response :success
  end

  test "should update eno_card" do
    patch eno_card_url(@eno_card), params: { eno_card: { text: @eno_card.text } }
    assert_redirected_to eno_card_url(@eno_card)
  end

  test "should destroy eno_card" do
    assert_difference('EnoCard.count', -1) do
      delete eno_card_url(@eno_card)
    end

    assert_redirected_to eno_cards_url
  end
end
