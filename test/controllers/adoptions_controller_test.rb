require 'test_helper'

class AdoptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adoption = adoptions(:one)
  end

  test "should get index" do
    get adoptions_url
    assert_response :success
  end

  test "should get new" do
    get new_adoption_url
    assert_response :success
  end

  test "should create adoption" do
    assert_difference('Adoption.count') do
      post adoptions_url, params: { adoption: { adopter_id: @adoption.adopter_id, animal_id: @adoption.animal_id, status: @adoption.status } }
    end

    assert_redirected_to adoption_url(Adoption.last)
  end

  test "should show adoption" do
    get adoption_url(@adoption)
    assert_response :success
  end

  test "should get edit" do
    get edit_adoption_url(@adoption)
    assert_response :success
  end

  test "should update adoption" do
    patch adoption_url(@adoption), params: { adoption: { adopter_id: @adoption.adopter_id, animal_id: @adoption.animal_id, status: @adoption.status } }
    assert_redirected_to adoption_url(@adoption)
  end

  test "should destroy adoption" do
    assert_difference('Adoption.count', -1) do
      delete adoption_url(@adoption)
    end

    assert_redirected_to adoptions_url
  end
end
