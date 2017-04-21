class CreateMensajes < ActiveRecord::Migration
  def change
    create_table :mensajes do |t|
      t.string :nombre
      t.string :email
      t.text :contenido_mensaje

      t.timestamps null: false
    end
  end
end
