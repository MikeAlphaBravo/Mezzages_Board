class CreateUsersBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :users_boards do |t|
      t.integer :user_id
      t.integer :board_id
    end
  end
end
