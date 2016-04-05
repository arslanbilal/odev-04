class Movie < ActiveRecord::Base
	has_many :ratings
	has_many :users, through: :ratings
	has_and_belongs_to_many :categories

    validates :title, :description, :director , :country, :date , presence: true
    validates :title, uniqueness: true
    validates :date, :inclusion => 1800..2018
end
