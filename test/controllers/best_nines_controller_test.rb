require 'test_helper'

class BestNinesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get best_nines_new_url
    assert_response :success
  end

  test "should get create" do
    get best_nines_create_url
    assert_response :success
  end

  test "should get index" do
    get best_nines_index_url
    assert_response :success
  end

end
