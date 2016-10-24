class Chef < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :chefname, presence: true, length: {minimum: 3, maximum: 40}
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates_format_of :email, with: /@/

end