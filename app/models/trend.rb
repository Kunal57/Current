class Trend < ApplicationRecord
	has_many :images
	has_many :tweets
	has_many :links
end