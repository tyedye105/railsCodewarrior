class AddColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profile_id, :integer
    remove_column :profiles, :user_id, :integer
  end
end
