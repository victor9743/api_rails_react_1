class CreateFinancas < ActiveRecord::Migration[6.1]
  def change
    create_table :financas do |t|
      t.string :descricao
      t.integer :movimentacao
      t.integer :valor

      t.timestamps
    end
  end
end
