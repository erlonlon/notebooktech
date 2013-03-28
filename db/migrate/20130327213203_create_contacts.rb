class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :fone
      t.string :assunto
      t.text :body

      t.timestamps
    end
  end
end
