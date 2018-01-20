require 'test_helper'

class SeactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seaction = seactions(:one)
  end

  test "should get index" do
    get seactions_url, as: :json
    assert_response :success
  end

  test "should create seaction" do
    assert_difference('Seaction.count') do
      post seactions_url, params: { seaction: { description: @seaction.description, time_end: @seaction.time_end, time_start: @seaction.time_start, title: @seaction.title } }, as: :json
    end

    assert_response 201
  end

  test "should show seaction" do
    get seaction_url(@seaction), as: :json
    assert_response :success
  end

  test "should update seaction" do
    patch seaction_url(@seaction), params: { seaction: { description: @seaction.description, time_end: @seaction.time_end, time_start: @seaction.time_start, title: @seaction.title } }, as: :json
    assert_response 200
  end

  test "should destroy seaction" do
    assert_difference('Seaction.count', -1) do
      delete seaction_url(@seaction), as: :json
    end

    assert_response 204
  end
end
