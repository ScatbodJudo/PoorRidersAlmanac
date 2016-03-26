class BlogController < ApplicationController
	  def index
    @blogPosts = BlogPost.all #.order("created_at DESC").paginate(:page => params[:page], :per_page => 8)
  	end




end
