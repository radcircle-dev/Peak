class Song < ActiveRecord::Base
	has_many :terms
	belongs_to :users
	#has_one :relative
	#has_one :post, :through => :relative

	has_many :comments, dependent: :destroy
	has_many :posts
	has_many :terms
	has_many :categories, :through => :terms

	def to_s
		title
	end

	def self.search(query)
		where("title like ?", "%#{query}%")
	end

	def to_param
		"#{id}-#{slug}"
	end

	def slug
		title.downcase.gsub(" ", "-")
	end

end
