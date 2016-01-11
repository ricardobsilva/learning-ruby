class State < ActiveRecord::Base
  validates_uniqueness_of :name

  belongs_to :address
  has_many :cities
  has_one :capital, -> { where(capital: true) }, class_name: 'City'
end
