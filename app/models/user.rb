class User < ApplicationRecord
  
  devise :database_authenticatable, :lockable, :recoverable, :rememberable, 
         :trackable, :validatable, :omniauthable, :confirmable, :registerable
end
