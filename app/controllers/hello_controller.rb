class HelloController < ApplicationController
  def index
    res = "helloworld production!!!!!!!!!!!!!"
    render json: res
  end
end
