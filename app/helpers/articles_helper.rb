module ArticlesHelper
	def artilce_params
		params.require(:article).permit(:title, :body)
	end
end
