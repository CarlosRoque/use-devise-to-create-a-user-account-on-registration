class Company < ActiveRecord::Base
  # Set up Company to have many_users  
  has_many :users
  # We want to validate at least one field you can choose any
  # field you want  
  validates :company_name, presence: true
  
  # Add other validations etc...
	
end
