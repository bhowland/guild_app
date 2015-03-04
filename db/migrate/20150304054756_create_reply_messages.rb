class CreateReplyMessages < ActiveRecord::Migration
  def change
    create_table :reply_messages do |t|
      t.string :replyMessage
      t.date :datePosted

      t.timestamps null: false
    end
  end
end
