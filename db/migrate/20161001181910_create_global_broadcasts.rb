class CreateGlobalBroadcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :global_broadcasts do |t|
    	t.string :name, null:false
    	t.integer :event_id, null:false
    	t.timestamps null:false
    end
  end
end
