class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable, :confirmable
          # This confirmable is needed to be commented out...
          
  include DeviseTokenAuth::Concerns::User
end
