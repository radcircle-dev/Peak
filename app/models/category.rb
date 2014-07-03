class Category < ActiveRecord::Base
	has_many :terms
	has_many :songs, :through => :terms

	def to_s
		title
	end
end
