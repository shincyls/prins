class Dress < ApplicationRecord
    # Gem pg_search for searhable columns
    include PgSearch
    multisearchable :against => [:name, :code, :color]
    # Ge will_paginate for infiniate scrolling
    self.per_page = 8
    # Active Record Association Defining
    belongs_to :category
    # CarrierWave Uploader
    mount_uploader :images, ImageUploader
end
