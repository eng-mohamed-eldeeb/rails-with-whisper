require "test_helper"

class WhispersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @whisper = whispers(:one)
  end

  test "should get index" do
    get whispers_url, as: :json
    assert_response :success
  end

  test "should create whisper" do
    assert_difference("Whisper.count") do
      post whispers_url, params: { whisper: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show whisper" do
    get whisper_url(@whisper), as: :json
    assert_response :success
  end

  test "should update whisper" do
    patch whisper_url(@whisper), params: { whisper: {  } }, as: :json
    assert_response :success
  end

  test "should destroy whisper" do
    assert_difference("Whisper.count", -1) do
      delete whisper_url(@whisper), as: :json
    end

    assert_response :no_content
  end
end
