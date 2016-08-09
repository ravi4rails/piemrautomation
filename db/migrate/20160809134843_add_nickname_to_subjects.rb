class AddNicknameToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :nickname, :string
  end
end
