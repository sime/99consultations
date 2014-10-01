require 'test_helper'

class ConsultationsControllerTest < ActionController::TestCase
  setup do
    @consultation = consultations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultation" do
    assert_difference('Consultation.count') do
      post :create, consultation: { budget: @consultation.budget, colors_materials_fabric: @consultation.colors_materials_fabric, customer: @consultation.customer, furnish: @consultation.furnish, must_have: @consultation.must_have, occupants: @consultation.occupants, other: @consultation.other, pictures: @consultation.pictures, style: @consultation.style, when: @consultation.when }
    end

    assert_redirected_to consultation_path(assigns(:consultation))
  end

  test "should show consultation" do
    get :show, id: @consultation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultation
    assert_response :success
  end

  test "should update consultation" do
    patch :update, id: @consultation, consultation: { budget: @consultation.budget, colors_materials_fabric: @consultation.colors_materials_fabric, customer: @consultation.customer, furnish: @consultation.furnish, must_have: @consultation.must_have, occupants: @consultation.occupants, other: @consultation.other, pictures: @consultation.pictures, style: @consultation.style, when: @consultation.when }
    assert_redirected_to consultation_path(assigns(:consultation))
  end

  test "should destroy consultation" do
    assert_difference('Consultation.count', -1) do
      delete :destroy, id: @consultation
    end

    assert_redirected_to consultations_path
  end
end
