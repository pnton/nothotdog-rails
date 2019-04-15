class Api::V1::NothotdogController < ApplicationController
  def is_hot_dog
    response = RestClient::Request.execute(
      method: :post,
      url: 'jsaw4ahrusl1ws.gradient.paperspace.com:5000/is-hot-dog',
      user: 'peterton',
      password: 'elumitas',
      payload: { :file => params[:file] }
    )  
    render json: response
  end
end