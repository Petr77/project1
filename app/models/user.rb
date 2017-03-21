class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email
  has_many :wines
  validate :eighteen_plus

  private

  def eighteen_plus
    if dob > (Time.now - 18.years)
      errors.add(:dob, "must be older than 18")
    end
  end
end
