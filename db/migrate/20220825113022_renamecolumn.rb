class Renamecolumn < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :price, :integer 

  end
end
