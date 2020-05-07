class Post < ApplicationRecord
    belongs_to :user
    belongs_to :club
    validates_presence_of :title, :body, :user_id, :club_id 
end