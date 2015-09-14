class HomeController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def send_msg
    p = Post.new
    p.content = params[:content]
    p.save
    
    render :text => ""
  end
end
