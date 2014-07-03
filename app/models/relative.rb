class Relative < ActiveRecord::Base
	belongs_to :song
	has_one :post
end
