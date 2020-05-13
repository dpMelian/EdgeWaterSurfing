class DropProductos < ActiveRecord::Migration[5.2]
  def change
    drop_table :productos
  end
end
