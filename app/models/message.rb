class Message < ActiveRecord::Base
    #for DB
    belongs_to :user
    has_many :reply_message
end
