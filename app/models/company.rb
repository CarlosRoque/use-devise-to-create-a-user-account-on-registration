class Company < ActiveRecord::Base

	has_many :users
	validates :company_name, presence: true
	
end
