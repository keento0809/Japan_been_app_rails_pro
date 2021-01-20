class AddBeensToPrefectures < ActiveRecord::Migration[6.0]
  def change
    add_column :prefectures, :beens, :string
  end
end
