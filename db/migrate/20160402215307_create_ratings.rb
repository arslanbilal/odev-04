class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :movie_id
      t.integer :user_id
      t.integer :point

      t.timestamps null: false
    end
  end
end
