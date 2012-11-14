class Contact < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone_number
  has_many :contact_user_assoc
  validates :phone_number, :length => { :maximum => 10 }
end
