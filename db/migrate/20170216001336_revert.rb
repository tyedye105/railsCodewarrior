class Revert < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :profile_id
    add_column :profiles, :user_id, :integer
  end
end
