class Character < ActiveRecord::Base
  belongs_to :house
  belongs_to :school
  has_many :roles
  has_many :pets
  has_one :blood_status
  has_and_belongs_to_many :books
end
