class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :date_of_joining
      t.string :designation
      t.string :mobile
      t.text :about

      t.timestamps null: false
    end
  end
end
