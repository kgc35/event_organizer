class Event < ApplicationRecord 
    belongs_to :user
    has_many :event_tags
    has_many :tags, through: event_tags
    has_many :attendances

end
