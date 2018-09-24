class Category < ApplicationRecord
    validates :name, uniqueness: {message: "Category Must Be Unique"}
    has_many :dresses
end