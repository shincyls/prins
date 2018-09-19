class User < ApplicationRecord
    validates :email, uniqueness: {notice: "Account already exists!"}, format: {with: /.+@.+\..+/, message: "Please enter a valid email address."}, presence: {notice: "Please enter your email address."}
	validates :username, uniqueness: {notice: "Username already exists!"}, presence: {notice: "Please enter your username."}
    validates :first_name, presence: {notice: "Please enter your first name."}
    validates :last_name, presence: {notice: "Please enter your last name."}
    has_secure_password

    enum role: ["admin", "user"]

end
