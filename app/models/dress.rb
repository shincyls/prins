class Dress < ApplicationRecord
    validates :code, uniqueness: {message: "Dresscode already exists!"}, presence: {message: "Please enter dress code."}
    validates :color, presence: {message: "Please enter dress color."}
    # General Association
    has_many :user_dress_likes
    has_many :users, through: :user_dress_likes
    # Gem pg_search for searhable columns
    include PgSearch
    multisearchable :against => [:name, :code, :color]
    # Ge will_paginate for infiniate scrolling
    self.per_page = 8
    # Active Record Association Defining
    has_many :user_dress_likes
    has_many :dresses, through: :user_dress_likes
    # CarrierWave Uploader
    mount_uploader :images, ImageUploader


    def likes
        total = self.users.count
    end


end
