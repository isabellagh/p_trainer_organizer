class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :image_url

      t.timestamps
    end
  end
end
