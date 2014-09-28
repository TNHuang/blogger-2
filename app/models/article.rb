class Article < ActiveRecord::Base
	has_many :comments
	def find
		@article = Article.find(params[:id])
	end
end
