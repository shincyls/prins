class Register < ApplicationRecord

    validates :first_name, presence: {message: " must presense."}
    validates :last_name, presence: {message: " must presense."}
    validates :email, uniqueness: {message: " must be unique."}, format: {with: /.+@.+\..+/, message: " format must be valid."}, presence: {message: " must presence."}

    include PgSearch
    pg_search_scope :search_registers, 
    against: [:first_name, :last_name, :phone_number, :email, :field_1, :field_2, :field_3],
    using: [:tsearch]

end
