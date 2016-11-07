class Chef < ActiveRecord::Base
  has_many :recipes
  has_many :likes
  before_save { self.email = email.downcase }
  validates :chefname, presence: true, length: {minimum: 3, maximum: 40}
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates_format_of :email, with: /@/

  has_secure_password

end