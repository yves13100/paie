require 'test_helper'

class MembresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @membre = membres(:one)
  end

  test "should get index" do
    get membres_url
    assert_response :success
  end

  test "should get new" do
    get new_membre_url
    assert_response :success
  end

  test "should create membre" do
    assert_difference('Membre.count') do
      post membres_url, params: { membre: { nom: @membre.nom, tel: @membre.tel } }
    end

    assert_redirected_to membre_url(Membre.last)
  end

  test "should show membre" do
    get membre_url(@membre)
    assert_response :success
  end

  test "should get edit" do
    get edit_membre_url(@membre)
    assert_response :success
  end

  test "should update membre" do
    patch membre_url(@membre), params: { membre: { nom: @membre.nom, tel: @membre.tel } }
    assert_redirected_to membre_url(@membre)
  end

  test "should destroy membre" do
    assert_difference('Membre.count', -1) do
      delete membre_url(@membre)
    end

    assert_redirected_to membres_url
  end
end
