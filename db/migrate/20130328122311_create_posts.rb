class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :subtitle
      t.string :autor
      t.string :url
      t.text :body

      t.timestamps
    end
  end
end
