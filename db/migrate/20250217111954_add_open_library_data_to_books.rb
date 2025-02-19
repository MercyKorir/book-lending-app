class AddOpenLibraryDataToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :cover_url, :string
    add_column :books, :synopsis, :text
    add_column :books, :visible, :boolean, default: true
  end
end
