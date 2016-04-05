class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

	def show
	  @movies = User.find(params[:id]).movies.sort { |m1,m2| m2.ratings.sum(:point) <=> m1.ratings.sum(:point) }
	end

end
