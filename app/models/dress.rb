class Dress < ApplicationRecord
    # Gem pg_search
    include PgSearch
    multisearchable :against => [:name, :code, :color]
    # Active Record Association Defining
    belongs_to :category
    # CarrierWave Uploader
    mount_uploader :images, ImageUploader
end
