class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :comentario, limit: 140
      t.integer :likes
      t.integer :usuario_id

      t.timestamps
    end
  end
end
