class AddIndexToUsersPhoto < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :photo
  end
end
