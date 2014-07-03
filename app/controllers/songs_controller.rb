class SongsController < ApplicationController
	before_filter :authenticate_user!, except: [:index, :show]

	def index
		@songs = Song.all
		@songs = Song.order("created_at DESC")
	end

	def new
		@song = Song.new
	end

	def create
		@song = Song.new(song_params)


  	    if @song.save
  		   redirect_to @song
  	    else
  		   render 'new'
  	    end
	end

	def show
		@song = Song.find(params[:id])
	end

	def edit
		@song = Song.find(params[:id])
	end

	def destroy
		@song = Song.find(params[:id])
   		@song.destroy

    	redirect_to songs_path
	end

	def update
		@song = Song.find(params[:id])

  		if @song.update(song_params)
  			redirect_to @song
  		else
  			render 'edit'
  		end
	end

	private
	def song_params
		params.require(:song).permit(:title, :artistn, :link, :user_id, :category_ids => [])
	end
end