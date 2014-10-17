class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :id_usuario, index: true
      t.references :id_assunto, index: true
      t.datetime :data

      t.timestamps
    end
  end
end
