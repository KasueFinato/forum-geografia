class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome, limit: 100
      t.string :email, limit: 140
      t.string :login, limit: 50
      t.string :senha, limit: 32
      t.date :nascimento
      t.boolean :ativo
      t.references :nivel, index: true

      t.timestamps
    end
  end
end
