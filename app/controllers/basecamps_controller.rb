class BasecampsController < ApplicationController
	def index
		@basecamps = Basecamp.all
	end

	def new
		@basecamp = Basecamp.new
	end

	def create
		@basecamp = Basecamp.new(base_params)
		if @basecamp.save
  			redirect_to @basecamp
  		else
  			render 'new'
  		end
	end

	def show
		@basecamp = Basecamp.find(params[:id])
	end

	private
	def base_params
  		params.require(:basecamp).permit(:text)
  	end
end
