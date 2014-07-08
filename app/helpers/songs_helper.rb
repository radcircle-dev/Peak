module SongsHelper
	def author_(song)
		raw("<div class=""song_details""> Categories: #{song.categories.map { |c| link_to(c.title, c) }.join(', ')} <br> Curated By: #{song.user} on #{song.created_at.strftime('%m-%d-%y')}| #{link_to(pluralize(song.comments.size, 'Comment'), song_path(song, anchor: 'commentlabel'))}</div>")
	end

	def song_posting(song)
		raw("<div class = ""song_details""> #{song.posts.map{ |p| p.title}.join(', ')} </div>")
	end

	

end
