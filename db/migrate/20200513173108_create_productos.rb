class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :title
      t.text :body
      t.decimal :price
      t.string :category

      t.timestamps
    end
  end
end
