require 'test_helper'

class ClasesAsignadasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clases_asignadas_index_url
    assert_response :success
  end

end
