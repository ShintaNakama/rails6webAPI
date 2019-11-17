class HelloController < ApplicationController
  def index
    res = "helloworld！！！！！！！！！"
    render json: res
  end
end
