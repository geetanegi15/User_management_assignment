class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable 
         #:confirmable
         #authentication_keys: [:login]

 #validates :user_name, presence: true , uniqueness: true

 #attr_accessor :login

 #def login
 # @login || self.user_name || self.email
#end

  #def self.find_for_database_authentication(warden_condition)
    #conditions = warden_condition.dup
    #if(login = conditions.delete(:login))
     # where(conditions.to_h).where(["lower(user_name) = :value 
      # OR lower(email) = :value", {value: login.downcase }]).first
    #elsif conditions.has_key?(:user_name) || conditions.has_key?(:email)
      #where(conditions.to_h).first
  #end
  #end
end
