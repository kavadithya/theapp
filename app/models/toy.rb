class Toy < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: true, length: {maximum: 50}

  has_and_belongs_to_many :users
end
