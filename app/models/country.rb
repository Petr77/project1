class Country < ApplicationRecord
  has_many :regions
  has_many :varieties, through: :regions
end
