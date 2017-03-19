class Region < ApplicationRecord
  belongs_to :country
  has_and_belongs_to_many :varieties
  has_many :wines
end
