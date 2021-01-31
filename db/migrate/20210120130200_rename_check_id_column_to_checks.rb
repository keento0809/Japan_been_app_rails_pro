class RenameCheckIdColumnToChecks < ActiveRecord::Migration[6.0]
  def change
    rename_column :checks, :check_id, :user_id
  end
end
