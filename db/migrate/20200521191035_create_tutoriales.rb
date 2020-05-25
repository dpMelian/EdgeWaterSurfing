class CreateTutoriales < ActiveRecord::Migration[5.2]
  def change
    create_table :tutoriales do |t|
      t.string :title
      t.string :body
      t.string :level
      t.string :url

      t.timestamps
    end
  end
end
