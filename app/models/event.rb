class Event < ActiveRecord::Base
  belongs_to :artist, required: true
end
