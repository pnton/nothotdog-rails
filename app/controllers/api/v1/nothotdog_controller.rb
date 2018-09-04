class Api::V1::NothotdogController < ApplicationController
  protect_from_forgery with: :null_session
  
  def is_hot_dog
    response = RestClient::Request.execute(
      method: :post,
      url: 'http://nothotdog.elumitas.com:5000/is-hot-dog',
      user: 'peterton',
      password: 'elumitas',
      payload: { :file => params[:file] }
    )  
    render json: response
  end
end