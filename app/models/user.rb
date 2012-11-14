class User < ActiveRecord::Base
  attr_accessible :name, :password
  has_many :contact_user_assoc
end
