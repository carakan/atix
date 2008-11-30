require 'test_helper'

class RevistasControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:revistas)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_revista
    assert_difference('Revista.count') do
      post :create, :revista => { }
    end

    assert_redirected_to revista_path(assigns(:revista))
  end

  def test_should_show_revista
    get :show, :id => revistas(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => revistas(:one).id
    assert_response :success
  end

  def test_should_update_revista
    put :update, :id => revistas(:one).id, :revista => { }
    assert_redirected_to revista_path(assigns(:revista))
  end

  def test_should_destroy_revista
    assert_difference('Revista.count', -1) do
      delete :destroy, :id => revistas(:one).id
    end

    assert_redirected_to revistas_path
  end
end
