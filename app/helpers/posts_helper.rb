module PostsHelper
	def author_(post)
		raw("<div class=""post_details""> Categories: #{post.categories.map { |c| link_to(c.title, c) }.join(', ')} <br> Posted By: #{post.user} on #{post.created_at.strftime('%m-%d-%y')}| #{link_to(pluralize(post.comments.size, 'Comment'), post_path(post, anchor: 'commentlabel'))}</div>")
	end

	

end
