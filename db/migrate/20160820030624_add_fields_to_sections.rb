class AddFieldsToSections < ActiveRecord::Migration
  def change
    add_column :sections, :batch_id, :integer
    add_column :sections, :begining, :date
    add_column :sections, :closing, :date
  end
end
