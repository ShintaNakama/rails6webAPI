class HelloController < ApplicationController
  def index
    res = "helloworld！yes!!!!!!!!!!!!!!!!!!77777777"
    render json: res
  end
end
