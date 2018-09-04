class Api::V1::NothotdogController < ApplicationController
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