class CreateBroadcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :broadcasts do |t|
    	t.string :name, null:false
    	t.integer :event_id, null:false
    	t.timestamps null:false
    end
  end
end
