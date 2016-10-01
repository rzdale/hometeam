class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    	t.string :name, null:false
    	t.datetime :time, null:false
    	t.integer :venue_id, null:false
    	t.timestamps null:false
    end
  end
end
