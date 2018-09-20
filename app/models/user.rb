class User < ApplicationRecord
    #Validate The Format and Presence of Required Information
    validates :email, uniqueness: {notice: "Account already exists!"}, format: {with: /.+@.+\..+/, message: "Please enter a valid email address."}, presence: {notice: "Please enter your email address."}
	validates :username, uniqueness: {notice: "Username already exists!"}, presence: {notice: "Please enter your username."}
    validates :first_name, presence: {notice: "Please enter your first name."}
    validates :last_name, presence: {notice: "Please enter your last name."}
    
    #Bcrypt with Secured Password
    has_secure_password

    #CarrierWave for uploader
    mount_uploader :avatar, AvatarUploader

    enum role: ["admin", "user"]

end
