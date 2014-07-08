module PostsHelper
	def author_for_(post)
		raw("<div class=""post_details""> Review By: #{post.user} on #{post.created_at.strftime('%m-%d-%y')}</div>")
	end

	

end
