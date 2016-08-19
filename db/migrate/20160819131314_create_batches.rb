class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.date :start_year
      t.date :end_year
      t.boolean :is_active
      t.integer :course_id
      t.timestamps null: false
    end
  end
end
