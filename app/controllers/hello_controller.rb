class HelloController < ApplicationController
  def index
    res = "helloworld！yes"
    render json: res
  end
end
