class Song < ActiveRecord::Base
	validates :title, presence: true
	validates :artistn, presence: true
	validates :desc, presence: true
	validates :link, presence: true

	belongs_to :user
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
