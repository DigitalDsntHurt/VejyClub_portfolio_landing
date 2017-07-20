require 'test_helper'

class SimpleLeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simple_lead = simple_leads(:one)
  end

  test "should get index" do
    get simple_leads_url
    assert_response :success
  end

  test "should get new" do
    get new_simple_lead_url
    assert_response :success
  end

  test "should create simple_lead" do
    assert_difference('SimpleLead.count') do
      post simple_leads_url, params: { simple_lead: {  } }
    end

    assert_redirected_to simple_lead_url(SimpleLead.last)
  end

  test "should show simple_lead" do
    get simple_lead_url(@simple_lead)
    assert_response :success
  end

  test "should get edit" do
    get edit_simple_lead_url(@simple_lead)
    assert_response :success
  end

  test "should update simple_lead" do
    patch simple_lead_url(@simple_lead), params: { simple_lead: {  } }
    assert_redirected_to simple_lead_url(@simple_lead)
  end

  test "should destroy simple_lead" do
    assert_difference('SimpleLead.count', -1) do
      delete simple_lead_url(@simple_lead)
    end

    assert_redirected_to simple_leads_url
  end
end
