class Article < ActiveRecord::Base

	def find
		@article = Article.find(params[:id])
	end
end
