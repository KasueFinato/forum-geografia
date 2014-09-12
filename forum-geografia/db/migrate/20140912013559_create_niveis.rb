class CreateNiveis < ActiveRecord::Migration
  def change
    create_table :niveis do |t|
      t.string :nivel, limit: 50

      t.timestamps
    end
  end
end
