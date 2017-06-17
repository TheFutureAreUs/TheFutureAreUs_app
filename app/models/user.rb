class User < ApplicationRecord
  attr_accessor :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => {email: true, login: false}

  has_many :listings, dependent: :destroy

  mount_uploader :avatar, AvatarUploader
  

  # The section below allows users to have a username, also they must have an email
  # that ends in .edu
  validates :email, 
    format: { 
      with: /\.edu\z/, 
      message: "only allows .edu addresses" 
    }

  validates :username, 
    :presence => true, 
    :uniqueness => {
      :case_sensitive => false
    }
  
  # Makes sure that users can't use another persons username
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  #validate :validate_username

  #def validate_username
    #if User.where(email: username).exists?
      #errors.add(:username, :invalid)
    #end
  #end

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", {:value => login.downcase}]).first
    else
      if conditions[:username].nil? 
        where(conditions).first 
      else 
        where(username: conditions[:username]).first
      end
    end 
  end
end
