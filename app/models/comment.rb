class Comment < ActiveRecord::Base
	validates :content, presence: true, length: {minimum: 4}
	belongs_to :song
	belongs_to :user

	def to_s
		"'#{content[0,15]}..' by user '#{user}"
	end

end
