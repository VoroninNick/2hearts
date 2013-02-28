require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post :create, service: { avatar_content_type: @service.avatar_content_type, avatar_file_name: @service.avatar_file_name, avatar_file_size: @service.avatar_file_size, avatar_updated_at: @service.avatar_updated_at, description: @service.description, name: @service.name }
    end

    assert_redirected_to service_path(assigns(:service))
  end

  test "should show service" do
    get :show, id: @service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service
    assert_response :success
  end

  test "should update service" do
    put :update, id: @service, service: { avatar_content_type: @service.avatar_content_type, avatar_file_name: @service.avatar_file_name, avatar_file_size: @service.avatar_file_size, avatar_updated_at: @service.avatar_updated_at, description: @service.description, name: @service.name }
    assert_redirected_to service_path(assigns(:service))
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete :destroy, id: @service
    end

    assert_redirected_to services_path
  end
end
