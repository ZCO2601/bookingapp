require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get import" do
    get reservations_import_url
    assert_response :success
  end

  test "should get index" do
    get reservations_index_url
    assert_response :success
  end
end
