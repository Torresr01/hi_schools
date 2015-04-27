class HighSchool < ActiveRecord::Base

validates :name, :city, :website :address :phone_number, presence: true
validates :username, :real_name, :email, presence: true

end
