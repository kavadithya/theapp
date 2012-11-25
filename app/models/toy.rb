class Toy < ActiveRecord::Base
  attr_accessible :name, :owner
  has_and_belongs_to_many :users
end
