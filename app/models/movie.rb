class Movie < ApplicationRecord
  belongs_to :actor
  CLASS_LIST = ["true","false"]

   validates :name, presence: true
   validates :status, presence: true
   validates :director_name, presence: true
   validates :club, presence: true
end
