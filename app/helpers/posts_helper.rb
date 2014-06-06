module PostsHelper
	def author_(post)
		raw("<div class=""post_details"">Posted By: #{post.user} | </div>")
	end
end
