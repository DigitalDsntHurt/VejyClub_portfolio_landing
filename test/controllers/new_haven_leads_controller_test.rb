require 'test_helper'

class NewHavenLeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_haven_lead = new_haven_leads(:one)
  end

  test "should get index" do
    get new_haven_leads_url
    assert_response :success
  end

  test "should get new" do
    get new_new_haven_lead_url
    assert_response :success
  end

  test "should create new_haven_lead" do
    assert_difference('NewHavenLead.count') do
      post new_haven_leads_url, params: { new_haven_lead: { email: @new_haven_lead.email, fav_veg: @new_haven_lead.fav_veg, name: @new_haven_lead.name, phone: @new_haven_lead.phone, space: @new_haven_lead.space, zip: @new_haven_lead.zip } }
    end

    assert_redirected_to new_haven_lead_url(NewHavenLead.last)
  end

  test "should show new_haven_lead" do
    get new_haven_lead_url(@new_haven_lead)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_haven_lead_url(@new_haven_lead)
    assert_response :success
  end

  test "should update new_haven_lead" do
    patch new_haven_lead_url(@new_haven_lead), params: { new_haven_lead: { email: @new_haven_lead.email, fav_veg: @new_haven_lead.fav_veg, name: @new_haven_lead.name, phone: @new_haven_lead.phone, space: @new_haven_lead.space, zip: @new_haven_lead.zip } }
    assert_redirected_to new_haven_lead_url(@new_haven_lead)
  end

  test "should destroy new_haven_lead" do
    assert_difference('NewHavenLead.count', -1) do
      delete new_haven_lead_url(@new_haven_lead)
    end

    assert_redirected_to new_haven_leads_url
  end
end
