class WelcomeController < ApplicationController

	def index
		@posts = Post.all.limit(3).order("created_at desc")
		@articles = Article.all.limit(3).order("updated_at desc")
	end

  def about
  end
end
