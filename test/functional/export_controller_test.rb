require 'test_helper'

class ExportControllerTest < ActionController::TestCase
  test "should get xls" do
    get :xls
    assert_response :success
  end

end
