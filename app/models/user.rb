class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :listings, dependent: :destroy

  validates :email, format: { with: /\.edu\z/, message: "only allows .edu addresses" }

end
