require "test_helper"

class ResultatControllerTest < ActionDispatch::IntegrationTest
  test "should get A1" do
    get resultat_A1_url
    assert_response :success
  end

  test "should get A2" do
    get resultat_A2_url
    assert_response :success
  end

  test "should get D" do
    get resultat_D_url
    assert_response :success
  end

  test "should get C" do
    get resultat_C_url
    assert_response :success
  end
end
