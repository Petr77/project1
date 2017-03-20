class Wine < ApplicationRecord
  belongs_to :region
  belongs_to :variety
  belongs_to :user
end
