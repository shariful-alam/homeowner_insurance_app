require "test_helper"

class HomeownerInsurancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homeowner_insurance = homeowner_insurances(:one)
  end

  test "should get index" do
    get homeowner_insurances_url
    assert_response :success
  end

  test "should get new" do
    get new_homeowner_insurance_url
    assert_response :success
  end

  test "should create homeowner_insurance" do
    assert_difference("HomeownerInsurance.count") do
      post homeowner_insurances_url, params: { homeowner_insurance: {  } }
    end

    assert_redirected_to homeowner_insurance_url(HomeownerInsurance.last)
  end

  test "should show homeowner_insurance" do
    get homeowner_insurance_url(@homeowner_insurance)
    assert_response :success
  end

  test "should get edit" do
    get edit_homeowner_insurance_url(@homeowner_insurance)
    assert_response :success
  end

  test "should update homeowner_insurance" do
    patch homeowner_insurance_url(@homeowner_insurance), params: { homeowner_insurance: {  } }
    assert_redirected_to homeowner_insurance_url(@homeowner_insurance)
  end

  test "should destroy homeowner_insurance" do
    assert_difference("HomeownerInsurance.count", -1) do
      delete homeowner_insurance_url(@homeowner_insurance)
    end

    assert_redirected_to homeowner_insurances_url
  end
end
