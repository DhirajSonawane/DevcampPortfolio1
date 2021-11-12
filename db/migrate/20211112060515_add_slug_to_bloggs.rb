class AddSlugToBloggs < ActiveRecord::Migration[6.1]
  def change
    add_column :bloggs, :slug, :string
  end
end
