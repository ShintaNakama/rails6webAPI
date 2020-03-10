class HelloController < ApplicationController
  def index
    res = "helloworld staging"
    render json: res
  end
end
