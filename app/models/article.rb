class Article < ActiveRecord::Base
	has_many :comments
	has_many :taggings
	has_many :tags, through: :taggings
	# def find
	# 	@article = Article.find(params[:id])
	# end

	def tag_list
		self.tags.collect do |tag|
			tag.name
		end.join(", ")
	end

	def tag_list=(tags)
		tag_names = tags.split(',').collect {|tag| tag.strip.downcase }.uniq
		new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name)}
		self.tags = new_or_found_tags
	end
end
