class ChangeCheckboxDefaultOnPrefectures < ActiveRecord::Migration[6.0]
  def up
    change_column :prefectures, :checkbox, :boolean, default: false
  end

  def down
    change_column :prefectures, :checkbox, :boolean
  end
end
