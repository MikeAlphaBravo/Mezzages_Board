class RenameUsersBoardsToBoardsUsers < ActiveRecord::Migration[5.1]
  def change
    rename_table :users_boards, :boards_users
  end
end
