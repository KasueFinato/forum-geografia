class CreateAssuntos < ActiveRecord::Migration
  def change
    create_table :assuntos do |t|
      t.string :assunto
      t.integer :tipo

      t.timestamps
    end
  end
end
