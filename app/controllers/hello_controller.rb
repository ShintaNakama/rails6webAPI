class HelloController < ApplicationController
  def index
    res = "hello"
    render json: res
  end
end
