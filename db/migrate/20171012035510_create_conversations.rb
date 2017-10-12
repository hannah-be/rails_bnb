class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.references :listing, foreign_key: true
      t.integer :host_id
      t.integer :guest_id

      t.timestamps
    end
  end
end
