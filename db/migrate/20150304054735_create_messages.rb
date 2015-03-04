class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :originalMessage
      t.date :datePosted

      t.timestamps null: false
    end
  end
end
