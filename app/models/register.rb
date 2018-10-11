class Register < ApplicationRecord


    include PgSearch
    pg_search_scope :search_registers, 
    against: [:first_name, :last_name, :phone_number, :email, :field_1, :field_2, :field_3],
    using: [:tsearch]


end
