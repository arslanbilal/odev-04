class CreateCategoriesMovies < ActiveRecord::Migration
  def change
    create_join_table :categories, :movies do |t|
    end
  end
end
