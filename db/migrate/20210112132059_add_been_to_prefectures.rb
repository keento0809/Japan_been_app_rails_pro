class AddBeenToPrefectures < ActiveRecord::Migration[6.0]
  def change
    add_column :prefectures, :been, :boolean, default: false, null: false
  end
end
