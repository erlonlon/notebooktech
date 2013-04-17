class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :cep
      t.string :fone
      t.string :email

      t.timestamps
    end
  end
end
