class AddCheckboxToPrefectures < ActiveRecord::Migration[6.0]
  def change
    add_column :prefectures, :checkbox, :boolean
  end
end
