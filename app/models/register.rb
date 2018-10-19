class Register < ApplicationRecord

    validates :first_name, presence: {message: " must presense."}
    validates :last_name, presence: {message: " must presense."}
    validates :drawing_chance, presence: {message: " must be selected."}
    # validates :email, uniqueness: {message: " must be unique."}, format: {with: /.+@.+\..+/, message: " format must be valid."}, presence: {message: " must presence."}

    enum category: ["walkin","vip"]
    enum status: ["unprint","printed"]

    include PgSearch
    pg_search_scope :search_registers, 
    against: [:first_name, :last_name, :drawing_chance, :ticket_number, :phone_number, :email, :category, :status],
    using: [:tsearch]

    def convert_ticket_number
        @convert = sprintf("N%04d", self.id)
        self.ticket_number = @convert
    end

end
