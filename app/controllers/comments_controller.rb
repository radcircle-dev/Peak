class CommentsController < ApplicationController
	before_filter :authenticate_user!

	def create
		@comment = Comment.new(params[:comment].permit(:content, :post_id)
		@comment.user = current_user
		if @comment.save
		end
	end

end
