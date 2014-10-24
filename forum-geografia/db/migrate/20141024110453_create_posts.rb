class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :usuario, index: true
      t.datetime :data
      t.string :conteudo
      t.references :assunto, index: true

      t.timestamps
    end
  end
end
