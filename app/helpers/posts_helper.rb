module PostsHelper
	def author_(post)
		raw("<div class=""post_details"">Posted By: #{post.user} | #{link_to(pluralize(post.comments.size, 'Comment'), post_path(post, anchor: 'commentlabel'))}</div>")
	end
end
