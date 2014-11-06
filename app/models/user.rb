class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # we set upa our User relation ship
  belongs_to :company
  # we tell User that we can take company attributes
  accepts_nested_attributes_for :company
  
  validates :email, presence: true, uniqueness: {scope: :company_id}
end
