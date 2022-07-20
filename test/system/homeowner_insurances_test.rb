require "application_system_test_case"

class HomeownerInsurancesTest < ApplicationSystemTestCase
  setup do
    @homeowner_insurance = homeowner_insurances(:one)
  end

  test "visiting the index" do
    visit homeowner_insurances_url
    assert_selector "h1", text: "Homeowner insurances"
  end

  test "should create homeowner insurance" do
    visit homeowner_insurances_url
    click_on "New homeowner insurance"

    click_on "Create Homeowner insurance"

    assert_text "Homeowner insurance was successfully created"
    click_on "Back"
  end

  test "should update Homeowner insurance" do
    visit homeowner_insurance_url(@homeowner_insurance)
    click_on "Edit this homeowner insurance", match: :first

    click_on "Update Homeowner insurance"

    assert_text "Homeowner insurance was successfully updated"
    click_on "Back"
  end

  test "should destroy Homeowner insurance" do
    visit homeowner_insurance_url(@homeowner_insurance)
    click_on "Destroy this homeowner insurance", match: :first

    assert_text "Homeowner insurance was successfully destroyed"
  end
end
