class DropBoardsUsers < ActiveRecord::Migration[5.1]
  def change
    drop_table :boards_users
  end
end
