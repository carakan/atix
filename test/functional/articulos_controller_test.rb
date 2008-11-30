require 'test_helper'

class ArticulosControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:articulos)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_articulo
    assert_difference('Articulo.count') do
      post :create, :articulo => { }
    end

    assert_redirected_to articulo_path(assigns(:articulo))
  end

  def test_should_show_articulo
    get :show, :id => articulos(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => articulos(:one).id
    assert_response :success
  end

  def test_should_update_articulo
    put :update, :id => articulos(:one).id, :articulo => { }
    assert_redirected_to articulo_path(assigns(:articulo))
  end

  def test_should_destroy_articulo
    assert_difference('Articulo.count', -1) do
      delete :destroy, :id => articulos(:one).id
    end

    assert_redirected_to articulos_path
  end
end
