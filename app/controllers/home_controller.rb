class HomeController < ApplicationController
  layout 'application'

  skip_before_action :authenticate_user!

	def index
	end

	def news
		if params[:name]
			@posts = [ Post.where(published: true).find(params[:name]) ]
		else
			@posts = Post.where(published: true).last(5)
		end
	end

end
