class Event < ApplicationRecord

    has_many :polls
    has_many :registers

end