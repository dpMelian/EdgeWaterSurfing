class AddAlumnosAsignadosToClases < ActiveRecord::Migration[5.2]
  def change
    add_column :clases, :alumnos_asignados, :string
  end
end
