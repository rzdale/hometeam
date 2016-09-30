class CreateBroadcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :broadcasts do |t|
    	t.timestamps null:false
    end
  end
end
