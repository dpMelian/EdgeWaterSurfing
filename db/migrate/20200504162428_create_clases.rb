class CreateClases < ActiveRecord::Migration[5.2]
  def change
    create_table :clases do |t|
      t.string :nombre
      t.integer :duracion
      t.string :profesor_asignado
      t.integer :cantidad_alumnos
      t.text :contenido
      t.integer :nivel_experiencia
      t.text :descripcion

      t.timestamps
    end
  end
end
