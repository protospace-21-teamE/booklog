class RenameColumnTypeToMediaType < ActiveRecord::Migration[5.0]
  def change
    rename_column :books, :type, :media_type
  end
end
