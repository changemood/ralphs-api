class User < ActiveRecord::Base
  has_many :cards, dependent: :destroy
  has_many :boards, dependent: :destroy
  has_many :sr_events, dependent: :destroy
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable, :confirmable
          # This confirmable is needed to be commented out...

  include DeviseTokenAuth::Concerns::User
end
