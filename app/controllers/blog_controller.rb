class BlogController < ApplicationController

	  def index
    @blogPosts = BlogPost.all #.order("created_at DESC").paginate(:page => params[:page], :per_page => 8)
  	end

  	def new
  		BlogPost.title = "My New Post"
  		BlogPost.subTitle = "A walk in the woods"
  		BlogPost.date = "1/1/2016"
  		BlogPost.authorName = "Todd Jacobus"
  	end



end

new