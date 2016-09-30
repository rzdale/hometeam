class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
    	t.integer :reviewer_id, null:false
    	t.integer :reviewee_id, null:false
    	t.timestamps null:false
    end
  end
end
