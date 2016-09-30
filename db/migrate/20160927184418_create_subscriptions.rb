class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
    	t.integer :venue_id, null:false
    	t.integer :package_id, null:false
    	t.timestamps null:false
    end
  end
end
