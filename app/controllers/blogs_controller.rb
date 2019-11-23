class BlogsController < ApplicationController

    def index
      @blogs = Blog.all
    end
  
    def show
      @blog = Blog.find(params[:blog_id])
    end

    def new
      @blog = Blog.new
    end


end
