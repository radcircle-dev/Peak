class CommentsController < ApplicationController
	before_filter :authenticate_user!

	def create
		@comment = Comment.new(params[:comment].permit(:content, :post_id))
		@comment.user = current_user
		respond_to do |format|
			if @comment.save
				
				format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
				format.js   {}
				format.json { render json: @comment, status: :created, location: @comment }
			else
				format.html { render action: "new" }
				format.json { render json: @user.errors, status: :unprocessable_entity }
			end
		end
	end
end