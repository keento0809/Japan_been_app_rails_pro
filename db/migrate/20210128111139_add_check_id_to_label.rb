class AddCheckIdToLabel < ActiveRecord::Migration[6.0]
  def change
    add_column :labels, :check_id, :integer
  end
end
