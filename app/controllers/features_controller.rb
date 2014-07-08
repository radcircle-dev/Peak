class FeaturesController < ApplicationController
 	before_filter :authenticate_user!, except: [:index, :show]

	def index
		@features = Feature.all
		@features = Feature.order("created_at DESC")
	end

	def new
		@feature = Feature.new
	end

	def create
		@feature = Feature.new(feature_params)
		@feature.user = current_user

  	    if @feature.save
  		   redirect_to @feature
  	    else
  		   render 'new'
  	    end
	end

	def show
		@feature = Feature.find(params[:id])
		    	
	end



	private
	def feature_params
		params.require(:feature).permit(:title, :subtitle, :content, :image_link)
	end
end
