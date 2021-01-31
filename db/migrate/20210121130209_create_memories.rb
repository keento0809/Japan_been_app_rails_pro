class CreateMemories < ActiveRecord::Migration[6.0]
  def change
    create_table :memories do |t|
      t.integer :user_id
      t.integer :prefecture_id
      t.string :prefecture_name
      t.string :comment
      t.string :img

      t.timestamps
    end
  end
end
