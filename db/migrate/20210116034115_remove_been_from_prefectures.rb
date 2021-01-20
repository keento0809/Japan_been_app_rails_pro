class RemoveBeenFromPrefectures < ActiveRecord::Migration[6.0]
  def change
    remove_column :prefectures, :been, :boolean
  end
end
