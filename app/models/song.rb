class Song < ActiveRecord::Base
	has_many :terms
	belongs_to :users
	has_one :relative
	has_one :post, :through => :relative

	has_many :terms
	has_many :categories, :through => :terms

	def to_s
		title
	end


end
