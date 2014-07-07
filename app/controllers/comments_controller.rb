class CommentsController < ApplicationController
	before_filter :authenticate_user!

	def create 
		@comment = Comment.new(params[:comment].permit(:content, :song_id))
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

	def destroy
		@song = Song.find(params[:song_id])
    	@comment = @song.comments.find(params[:id])
    	@comment.destroy
    	redirect_to song_path(@song)
	end

	

end