class User < ApplicationRecord
    #Validate The Format and Presence of Required Information
    validates :email, uniqueness: {message: "Account already exists!"}, format: {with: /.+@.+\..+/, message: ": Please enter a valid email address."}, presence: {message: ": Please enter your email address."}
	validates :username, uniqueness: {message: ": Username already exists!"}, presence: {message: ": Please enter your username."}
    validates :first_name, presence: {message: ": Please enter your first name."}
    validates :last_name, presence: {message: ": Please enter your last name."}

    # Active Record Association Defining
    has_many :user_dress_likes
    has_many :dresses, through: :user_dress_likes

    #Bcrypt with Secured Password
    has_secure_password

    #CarrierWave for uploader
    mount_uploader :avatar, AvatarUploader

    enum role: ["admin", "user"]

    def favourites
        total = self.dresses.count
    end

    def fullname
       self.first_name + " " + self.last_name
    end

    def hello
        "Hello"
    end

end
