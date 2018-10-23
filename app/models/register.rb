class Register < ApplicationRecord

    validates :full_name, presence: {message: " must presense."}
    # validates :last_name, presence: {message: " must presense."}
    # validates :drawing_chance, presence: {message: " must be selected."}
    # validates :email, uniqueness: {message: " must be unique."}, format: {with: /.+@.+\..+/, message: " format must be valid."}, presence: {message: " must presence."}

    enum category: ["Walk-In","Registered","RSVP"]
    enum status: ["unprint","printed"]

    include PgSearch
    pg_search_scope :search_registers, 
    against: [:full_name, :first_name, :last_name, :drawing_chance, :ticket_number, :phone_number, :phone_number_2, :identity_number, :identity_number_2, :status],
    using: [:tsearch]

    def convert_ticket_number
        @convert = sprintf("N%04d", self.id)
        self.ticket_number = @convert
    end

    def convert_full_name
        @convert = self.first_name + " " + self.last_name
    end

    def convert_draw_chance
        if self.purchase >= 20000
            self.drawing_chance = 5
        elsif self.purchase >= 10000
            self.drawing_chance = 3
        else
            self.drawing_chance = 1
        end
    end

end
