class BlogController < ApplicationController
		before_action :load_posts


	  def index  #this method puts all the stuff pulled from 'load_posts' and packages it nicely in a instanced variable
    @blogPosts = BlogPost.all
  	end

  	def load_posts  #this method should pull posts from AWS s3 and add them to the database (like magic)
 			
  	end

end






