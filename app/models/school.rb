class School < ActiveRecord::Base
	has_many :houses
	has_many :characters
end
