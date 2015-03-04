class ReplyMessage < ActiveRecord::Base
    #for DB
    belongs_to :message
    belongs_to :users
end
