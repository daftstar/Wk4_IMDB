class MoviesController < ApplicationController

	def show_all
		@movies_all = Movie.all
		@movies_first = Movie.first
		@movies_last	= Movie.last
	end


	def show
		@movie = Movie.find(params[:id])
	end


end
