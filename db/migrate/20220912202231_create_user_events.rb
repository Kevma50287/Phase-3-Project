class CreateUserEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :user_events do |t|
      t.boolean :isAdmin?
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
