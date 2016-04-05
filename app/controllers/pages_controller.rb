class PagesController < ApplicationController
  
  def home
  	@movies = Movie.joins(:ratings).group(:id).order('SUM(ratings.point) DESC').limit(10)
  end

  def about
  end

  def contact
  end
  
end
