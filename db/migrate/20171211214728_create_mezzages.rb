class CreateMezzages < ActiveRecord::Migration[5.1]
  def change
    create_table :mezzages do |t|
      t.integer :user_id
      t.integer :board_id
      t.string :title
      t.string :body
    end
  end
end
