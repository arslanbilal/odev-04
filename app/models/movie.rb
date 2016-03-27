class Movie < ActiveRecord::Base
    validates :title, :description, :director , :country, :date , presence: true
end
