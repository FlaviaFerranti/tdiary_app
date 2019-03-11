require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Travel Diary - pagina iniziale"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "La nostra app"
  end

end
