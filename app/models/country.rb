class Country < ApplicationRecord
  has_many :regions
  has_many :varieties, through: :regions
  validates_uniqueness_of :name
end
