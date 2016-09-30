class CreatePerformers < ActiveRecord::Migration[5.0]
  def change
    create_table :performers do |t|
    	t.timestamps null:false
    end
  end
end
