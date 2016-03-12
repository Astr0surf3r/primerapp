class CreateTareas < ActiveRecord::Migration
  def change
    create_table :tareas do |t|
      t.string :contenido

      t.timestamps null: false
    end
  end
end
