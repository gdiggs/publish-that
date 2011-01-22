require "digest/sha1"

class User < ActiveRecord::Base

  validates_presence_of :email_address, :password
 
  before_save :hash_password

  attr_accessor :password

  # Returns true if the password passed matches the password in the DB
  def valid_password?(password)
    self.password_hash == self.class.hash_password(password)
  end

  private

  # Performs the actual password encryption. You want to change this salt to something else.
  def self.hash_password(password, salt = "fundamentals of computer science 2007 and kittens")
    Digest::SHA1.hexdigest(password, salt)
  end

  def hash_password
    self.password_hash = self.class.hash_password(self.password) unless self.password.blank?
  end
end
